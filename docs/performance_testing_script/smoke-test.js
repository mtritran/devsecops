import http from 'k6/http';
import { check, sleep } from 'k6';

export let options = {
  vus: 1, // 1 user
  duration: '10s', // run for 10 seconds
};

export default function () {
  let res = http.get('http://<target-server-ip>:3000/');
  check(res, { 'status was 200': (r) => r.status === 200 });
  sleep(1);
}