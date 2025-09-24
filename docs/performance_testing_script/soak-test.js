import http from 'k6/http';
import { sleep } from 'k6';

export let options = {
  vus: 20, // 20 concurrent users
  duration: '10m', // run continuously for 10 minutes
};

export default function () {
  http.get('http://<target-server-ip>:3000/');
  sleep(1);
}