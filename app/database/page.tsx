import React from 'react'
import Navbar from '@/components/Navbar'
import "./db.css"

export default function page() {
  return (
    <div>
        <Navbar />
        <div className='flex'>
            <div className='h-[1250px] w-[250px] bg-[#222831] flex-row align-middle justify-center'>
                <h1 className='text-white text-center mt-3'>Sort By</h1>
                <div className='h-[40px] grid align-middle justify-centre'>
                    <button className='Sort-Button'>Collection</button>
                    <button className='Sort-Button'>Rarity</button>
                    <button className='Sort-Button'>Weapon</button>
                </div>
            </div>
            <div className='flex'>
                <h1>Skins</h1></div>
            </div>
    </div>
  )
}
