import type { NextApiRequest, NextApiResponse } from 'next'
import url from '../../api/url'
import { AxiosResponse } from 'axios';

type Data = {
  name: string
}

export default function handler(
  req: NextApiRequest,
  res: NextApiResponse<Data>
) {
  url.get('/static_pages/landing_page').then((response: AxiosResponse) => {
    res.status(200).json(response.data)
  }).catch((error)=>{
    console.error(error);
  })
}
