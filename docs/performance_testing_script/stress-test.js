import http from 'k6/http';
import { sleep } from 'k6';

export let options = {
  stages: [
    { duration: '30s', target: 20 }, // warm up: 20 users
    { duration: '1m', target: 50 }, // ramp to 50 users
    { duration: '30s', target: 100 }, // peak: 100 users
    { duration: '1m', target: 0 }, // ramp down to 0
  ],
};

export default function () {
  http.get('http://<target-server-ip>:3000/');
  sleep(1);
}