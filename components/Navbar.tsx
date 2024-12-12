import Link from 'next/link'
import React from 'react'

function Navbar() {
  return (
    <div className="w-full h-[55px] bg-[#31363F] flex rounded-m px-4">
        <div className='w-[300px] text-center align-middle justify-center h-50px flex-none py-1 my-1' >
            <Link href="/"><button className='bg-[#222831] py-2 px-4 text-center rounded-lg'>Gambling-A</button></Link>
        </div>
        <div className=' flex w-[500px] align-middle justify-evenly p-1 m-1'>
            <button className='bg-[#222831] py-2 px-4 text-center rounded-lg'>Trade</button>
        <Link href="/database"><button className='bg-[#222831] py-2 px-4 text-center rounded-lg'>DataBase</button></Link>
            <button className='bg-[#222831] py-2 px-3 text-center rounded-lg'>FAQ</button>
        </div>
    </div>
  )
}

export default Navbar
