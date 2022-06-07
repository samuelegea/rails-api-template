import axios, { AxiosResponse } from 'axios'
import React, { useState, useEffect } from 'react'

export default function LandingPage() {
  const [dataFetched, setDataFetched] = useState('');
  useEffect(() => {
    console.log(process.env.API_URL)
    const a = axios.get(
      '/api/landing_page'
    ).then((response: AxiosResponse) => {
      console.log(response);
      setDataFetched(JSON.stringify(response.data));
    })
  }, [])

  return (
    <div>
      This is the landing page
      <br />
      <br />
      
      And the data fetched from the api was: <br />
      <br />

      {dataFetched}
    </div>
  )
}
