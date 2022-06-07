import axios, { AxiosInstance } from "axios";

const url: AxiosInstance = axios.create({
  baseURL: process.env.API_URL || 'http://backend:3000',
  proxy: false
})

export default url;
