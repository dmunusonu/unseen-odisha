import React from "react";
import './home.css';
import video from '../../Assets/videobg.mp4';
const Home=()=>{
    return(
        <section className='home'>
            <div className="overlay"></div>
             <video src={video} type=  "video/mp4" autoPlay loop muted  ></video>
                <div className="homeContent container">
                <div className="textDiv">
                    <div className="homeTitle">
                    <h1>India's Best Kept Secret </h1>
                    </div>
                    <div className="explore">
                    <button class="button" role="button"><span class="text">Explore Now</span></button>
                    </div>
                </div>

                <main class="page-content">
                <div class="card">
                    <div class="content">
                    <h2 class="title">Kashmir valley</h2>
                    <p class="copy">Check out all of these gorgeous mountain trips with beautiful views of, you guessed it, the mountains</p>
                    <button class="btn">View Trips</button>
                    </div>
                </div>
                <div class="card">
                    <div class="content">
                    <h2 class="title">Way to Goa</h2>
                    <p class="copy">Plan your next beach trip with these fabulous destinations</p>
                    <button class="btn">View Trips</button>
                    </div>
                </div>
                <div class="card">
                    <div class="content">
                    <h2 class="title">Desert Destinations</h2>
                    <p class="copy">It's the desert you've always dreamed of</p>
                    <button class="btn">Book Now</button>
                    </div>
                </div>
                <div class="card">
                    <div class="content">
                    <h2 class="title">Explore The Galaxy</h2>
                    <p class="copy">Seriously, straight up, just blast off into outer space today</p>
                    <button class="btn">Book Now</button>
                    </div>
                </div>
                </main>
                
                
                            </div>
                            
                        </section>
                    )
                }
                export default Home