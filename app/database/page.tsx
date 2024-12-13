import React from 'react'
import Navbar from '@/components/Navbar'
import "./db.css"

export default function page() {
  return (
    <div>
        <Navbar />
        <div className='flex'>
            <div className='h-[700px] w-[250px] bg-[#31363F] flex-row align-middle justify-center mx-4 my-4 rounded-lg'>
                <h1 className='text-white text-center mt-3'>Sort By</h1>
                <div className='h-[40px] grid align-middle justify-centre'>
                    <button className='Sort-Button'>Collection</button>
                    <button className='Sort-Button'>Rarity</button>
                    <button className='Sort-Button'>Weapon</button>
                </div>
            </div>
            <div className='flex'>
                <h1 className='text-center'>Skins</h1></div>
            </div>
    </div>
  )
}
