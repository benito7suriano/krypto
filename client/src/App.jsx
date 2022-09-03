import { useState } from 'react'
import { Navbar, Welcome, Footer, Services, Transactions } from './components'

const App = () => {
  return (
    <div className='min-h-screen'>
      <div className='gradient-bg-welcome'>
        {/* TODO: separate navbar and welcome so we can align welcome and services on large screens */}
        <Navbar />
        <Welcome />
      </div>
      <Services />
      <Transactions />
      <Footer />
    </div>
  )
}

export default App
