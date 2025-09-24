import http from 'k6/http';
import { sleep } from 'k6';

export let options = {
  vus: 50, // 50 concurrent users
  duration: '30s', // for 30 seconds
};

export default function () {
  http.get('http://<target-server-ip>:3000/');
  sleep(1);
}