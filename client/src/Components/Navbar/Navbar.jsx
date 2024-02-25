import React,{useState} from "react";
import './navbar.css';
import { SiYourtraveldottv } from "react-icons/si";
import { IoIosCloseCircle } from "react-icons/io";
import { TbGridDots } from "react-icons/tb";
const Navbar=()=>{
    const [active, setActive]= useState('navBar')
// function to toogle navbar
const showNav=()=>{
    setActive(' navBar activeNavbar')
}
const removeNav=()=>{
    setActive(' navBar')
}
    return(
       <section className="navBarSection">
        <header className="header flex">
<div className="logoDiv">
    <a href="#" className="logo flex">
        <h1><SiYourtraveldottv className="icon" />Unseen Odisha</h1>
    </a>
</div>
<div className={active}>
    <ul className="navLists flex">
        <li className="navItem">
            <a href="#" className="navlink">Home</a>
        </li>
        <li className="navItem">
            <a href="#" className="navlink">About</a>
        </li>
        <li className="navItem">
            <a href="#" className="navlink">Places</a>
        </li>
  
        <li className="navItem">
            <a href="#" className="navlink">Contact</a>
        </li>

     <button className="btn">
        <a href="#">LOG IN</a>
     </button>
    </ul>
    <div onClick={removeNav} className="closeNavbar">
    <IoIosCloseCircle  className='icon'/>
    </div>
</div>
<div onClick={showNav} className="toggleNavbar">
<TbGridDots className="icon" />
</div>
        </header>
       </section>
    )
}
export default Navbar