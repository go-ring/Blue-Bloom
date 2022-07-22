<%@ page contentType="text/html; charset=utf-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>B.Bloom main page</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

</head>
<style>
:root{
    --pink:#e84393;
}

*{
    margin:0; padding:0;
    box-sizing: border-box;
    font-family: Verdana, Geneva, Tahoma, sans-serif;
    outline: none; border:none;
    text-decoration: none;
    text-transform: capitalize;
    transition: .2s linear;
}

html{
    font-size: 62.5%;
    scroll-behavior: smooth;
    scroll-padding-top: 6rem;
    overflow-x: hidden;
}

section{
    padding:2rem 9%;
}

.heading{
    text-align: center;
    font-size: 4rem;
    color:#333;
    padding:1rem;
    margin:2rem 0;
    background:rgba(255, 51, 153,.05);
}

.heading span{
    color:var(--pink);
}

.btn{
    display: inline-block;
    margin-top: 1rem;
    border-radius: 5rem;
    background:#333;
    color:#fff;
    padding:.9rem 3.5rem;
    cursor: pointer;
    font-size: 1.7rem;
}

.btn:hover{
    background:var(--pink);
}

header{
    position: fixed;
    top:0; left:0; right:0;
    background:#fff;
    padding:2rem 9%;
    display: flex;
    align-items: center;
    justify-content: space-between;
    z-index: 1000;
    box-shadow: 0 .5rem 1rem rgba(0,0,0,.1);
}

header .logo{
    font-size: 3rem;
    color:#333;
    font-weight: bolder;
}

header .logo span{
    color:var(--pink);
}

header .navbar a{
    font-size: 2rem;
    padding:0 1.5rem;
    color:#666;
}

header .navbar a:hover{
    color:var(--pink);
}

header .icons a{
    font-size: 2.5rem;
    color:#333;
    margin-left: 1.5rem;
}

header .icons a:hover{
    color:var(--pink);
}

header #toggler{
    display: none;
}

header .fa-bars{
    font-size: 3rem;
    color:#333;
    border-radius: .5rem;
    padding:.5rem 1.5rem;
    cursor: pointer;
    border:.1rem solid rgba(0,0,0,.3);
    display: none;
}

.home{
    display: flex;
    align-items: center;
    min-height: 100vh;
    background-image: url('images/home-bg.jpg');
    background-size: cover;
    background-position: center;
}

.home .content{
    max-width: 50rem;
}

.home .content h3{
    font-size: 6rem;
    color:#333;
}

.home .content span{
    font-size: 3.5rem;
    color:var(--pink);
    padding:1rem 0;
    line-height: 1.5;
}

.home .content p{
    font-size: 1.5rem;
    color:#999;
    padding:1rem 0;
    line-height: 1.5;
}

.about .row{
    display: flex;
    align-items: center;
    gap:2rem;
    flex-wrap: wrap;
    padding:2rem 0;
    padding-bottom: 3rem;
}

.about .row .video-container{
    flex:1 1 40rem;
    position: relative;
}

.about .row .video-container video{
    width:100%;
    border:1.5rem solid #fff;
    border-radius: .5rem;
    box-shadow: 0 .5rem 1rem rgba(0,0,0,.1);
    height: 100%;
    object-fit: cover;
}

.about .row .video-container h3{
    position: absolute;
    top:50%; transform: translateY(-50%);
    font-size: 3rem;
    background:#fff;
    width:100%;
    padding:1rem 2rem;
    text-align: center;
    mix-blend-mode: screen;
}

.about .row .content{
    flex:1 1 40rem;
}

.about .row .content h3{
    font-size: 3rem;
    color:#333;
}

.about .row .content p{
    font-size: 1.5rem;
    color:#999;
    padding:.5rem 0;
    padding-top: 1rem;
    line-height: 1.5;
}

.icons-container{
    background:#eee;
    display: flex;
    flex-wrap: wrap;
    gap:1.5rem;
    padding-top: 5rem;
    padding-bottom: 5rem;
}

.icons-container .icons{
    background:#fff;
    border:.1rem solid rgba(0,0,0,.1);
    padding:2rem;
    display: flex;
    align-items: center;
    flex:1 1 25rem;
}

.icons-container .icons img{
    height:5rem;
    margin-right: 2rem;
}

.icons-container .icons h3{
    color:#333;
    padding-bottom: .5rem;
    font-size: 1.5rem;
}

.icons-container .icons span{
    color:#555;
    font-size: 1.3rem;
}

.products .box-container{
    display: flex;
    flex-wrap: wrap;
    gap:1.5rem;
}

.products .box-container .box{
    flex:1 1 30rem;
    box-shadow: 0 .5rem 1.5rem rgba(0,0,0,.1);
    border-radius: .5rem;
    border:.1rem solid rgba(0,0,0,.1);
    position: relative;    
}

.products .box-container .box .image{
    position: relative;
    text-align: center;
    padding-top: 2rem;
    overflow:hidden;
}

.products .box-container .box .image img{
    height:25rem;
}

.products .box-container .box:hover .image img{
    transform: scale(1.1);
}

.products .box-container .box .image .icons{
    position: absolute;
    bottom:-7rem; left:0; right:0;
    display: flex;
}

.products .box-container .box:hover .image .icons{
    bottom:0;
}

.products .box-container .box .image .icons a{
    height: 5rem;
    line-height: 5rem;
    font-size: 2rem;
    width:50%;
    background:var(--pink);
    color:#fff;
}

.products .box-container .box .image .icons .cart-btn{
    border-left: .1rem solid #fff7;
    border-right: .1rem solid #fff7;
    width:100%;
}

.products .box-container .box .image .icons a:hover{
    background:#333;
}

.products .box-container .box .content{
    padding:2rem;
    text-align: center;
}

.products .box-container .box .content h3{
    font-size: 2.5rem;
    color:#333;
}

.products .box-container .box .content .price{
    font-size: 2.5rem;
    color:var(--pink);
    font-weight: bolder;
    padding-top: 1rem;
}

.products .box-container .box .content .price span{
    font-size: 1.5rem;
    color:#999;
    font-weight: lighter;
    text-decoration: line-through;
}

.review .box-container{
    display: flex;
    flex-wrap: wrap;
    gap:1.5rem;
}

.review .box-container .box{
    flex:1 1 30rem;
    box-shadow: 0 .5rem 1.5rem rgba(0,0,0,.1);
    border-radius: .5rem;
    padding:3rem 2rem;
    position: relative;
    border:.1rem solid rgba(0,0,0,.1);
}

.review .box-container .box .fa-quote-right{
    position: absolute;
    bottom:3rem; right:3rem;
    font-size: 6rem;
    color:#eee;
}

.review .box-container .box .stars i{
    color:var(--pink);
    font-size: 2rem;
}

.review .box-container .box p{
    color:#999;
    font-size: 1.5rem;
    line-height: 1.5;
    padding-top: 2rem;
}

.review .box-container .box .user{
    display: flex;
    align-items: center;
    padding-top: 2rem;
}

.review .box-container .box .user img{
    height:6rem;
    width:6rem;
    border-radius: 50%;
    object-fit: cover;
    margin-right: 1rem;
}

.review .box-container .box .user h3{
    font-size: 2rem;
    color:#333;
}

.review .box-container .box .user span{
    font-size: 1.5rem;
    color:#999;
}

.contact .row{
    display: flex;
    flex-wrap: wrap-reverse;
    gap:1.5rem;
    align-items: center;
}

.contact .row form{
    flex:1 1 40rem;
    padding:2rem 2.5rem;
    box-shadow: 0 .5rem 1.5rem rgba(0,0,0,.1);
    border:.1rem solid rgba(0,0,0,.1);
    background: #fff;
    border-radius: .5rem;
}

.contact .row .image{
    flex:1 1 40rem;
}

.contact .row .image img{
    width: 100%;
}

.contact .row form .box{
    padding:1rem;
    font-size: 1.7rem;
    color:#333;
    text-transform: none;
    border:.1rem solid rgba(0,0,0,.1);
    border-radius: .5rem;
    margin:.7rem 0;
    width: 100%;
}

.contact .row form .box:focus{
    border-color: var(--pink);
}

.contact .row form textarea{
    height: 15rem;
    resize: none;
}

.footer .box-container{
    display: flex;
    flex-wrap: wrap;
    gap:1.5rem;
}

.footer .box-container .box{
    flex:1 1 25rem;
}

.footer .box-container .box h3{
    color:#333;
    font-size: 2.5rem;
    padding:1rem 0;
}

.footer .box-container .box a{
    display: block;
    color:#666;
    font-size: 1.5rem;
    padding:1rem 0;
}

.footer .box-container .box a:hover{
    color:var(--pink);
    text-decoration: underline;
}

.footer .box-container .box  img{
    margin-top: 1rem;
}






@media (max-width:991px){
    
    html{
        font-size: 55%;
    }

    header{
        padding:2rem;
    }

    section{
        padding:2rem;
    }

    .home{
        background-position: left;
    }

}

@media (max-width:768px){

    header .fa-bars{
        display: block;
    }

    header .navbar{
        position:absolute;
        top:100%; left:0; right:0;
        background:#eee;
        border-top: .1rem solid rgba(0,0,0,.1);
        clip-path: polygon(0 0, 100% 0, 100% 0, 0 0);
    }

    header #toggler:checked ~ .navbar{
        clip-path:polygon(0 0, 100% 0, 100% 100%, 0% 100%);
    }

    header .navbar a{
        margin:1.5rem;
        padding:1.5rem;
        background:#fff;
        border:.1rem solid rgba(0,0,0,.1);
        display: block;
    }

    .home .content h3{
        font-size: 5rem;
    }

    .home .content span{
        font-size: 2.5rem;
    }

    .icons-container .icons h3{
        font-size: 2rem;
    }
    
    .icons-container .icons span{
        font-size: 1.7rem;
    }
    
}

@media (max-width:450px){
    
    html{
        font-size: 50%;
    }

    .heading{
        font-size: 3rem;
    }

}
</style>
<body>




<header>

    <input type="checkbox" name="" id="toggler">
    <label for="toggler" class="fas fa-bars"></label>

    <a href="#" class="logo">B.Bloom<span>.</span></a>

    <nav class="navbar">
        <a href="#home">home</a>
        <a href="#about">about</a>
        <a href="#products">products</a>
        <a href="#review">review</a>
        <a href="#contact">contact</a>
    </nav>

    <div class="icons">
        <a href="https://www.nihhs.go.kr/usr/persnal/Flower_library.do" class="fas fa-search"></a>
        <a href="#" class="fas fa-shopping-cart"></a>
        <a href="loginmain.jsp" class="fas fa-user"></a>
    </div>

</header>



<section class="home" id="home">

    <div class="content">
        <h3>blue bloom</h3>
        <span> fresh & meaningful flowers </span>
        <p>지금 이 순간, 선물같은 일상.<br>당신의 평범한 일상을 특별한 추억으로 만들어드립니다.</p>
        <a href="#" class="btn">shop now</a>
    </div>
    
</section>



<section class="about" id="about">

    <h1 class="heading"> <span> about </span> us </h1>

    <div class="row">

        <div class="video-container">
            <video src="images/about-vid.mp4" loop autoplay muted></video>
            <h3>We are best flower</h3>
        </div>

        <div class="content">
            <h3>why choose us?</h3>
            <p> Blue Bloom(푸르게 피어나다)’은 전문 디자이너가 직접 꽃다발을 만들어 선물해줍니다. 고객이 원하는 꽃을 중심으로 혹은 고객이 원하는 색감을 따라, 신선한 꽃으로 최대한의 아름다움을 담아 꽃다발을 보내드립니다!  </p>
            <p>또한, 다양한 꽃들의 꽃말을 찾아볼 수 있는 사이트와 연결시켜 꽃말을 통해 의미있는 꽃다발을 제작할 수 있도록 고객의 선택을 돕습니다.</p>
            <a href="#" class="btn">learn more</a>
        </div>

    </div>

</section>



<section class="icons-container">

    <div class="icons">
        <img src="images/icon-1.png" alt="">
        <div class="info">
            <h3>무료 배송</h3>
            <span>모두 무료배송해드립니다.</span>
        </div>
    </div>

    <div class="icons">
        <img src="images/icon-2.png" alt="">
        <div class="info">
            <h3>10일 전 반품</h3>
            <span>100% 환불 보장합니다.</span>
        </div>
    </div>

    <div class="icons">
        <img src="images/icon-3.png" alt="">
        <div class="info">
            <h3>주문  & 선물</h3>
            <span>손상없는 포장 해드립니다.</span>
        </div>
    </div>

    <div class="icons">
        <img src="images/icon-4.png" alt="">
        <div class="info">
            <h3>안전한 거래</h3>
            <span>배송 과정을 보여드립니다.</span>
        </div>
    </div>
   
</section>



<section class="products" id="products">

    <h1 class="heading"><span>products</span> list </h1>

    <div class="box-container">

        <div class="box">
            <div class="image">
                <img src="images/img-1.jpg" alt="">
                 <div class="icons">
                    <a href="#" class="cart-btn">add to cart</a>
                    <a href="#" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>안개 물망초</h3>
                <h4>옐로/크림/퍼플/핑크</h4>
                <div class="price"> $27,000 <span>$32,000</span> </div>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="images/img-2.jpg" alt="">
                <div class="icons">
                    <a href="#" class="cart-btn">add to cart</a>
                    <a href="#" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>수국</h3>
                <h4>핑크/피치/화이트</h4>
                <div class="price"> $34,000 <span>$39,000</span> </div>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="images/img-3.jpg" alt="">
                <div class="icons">
                    <a href="#" class="cart-btn">add to cart</a>
                    <a href="#" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>장미</h3>
                <h4>스카이블루/딥핑크/크림핑크믹스/브라운</h4>
                <div class="price"> $48,000 <span>$53,000</span> </div>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="images/img-4.jpg" alt="">
                <div class="icons">
                    <a href="#" class="cart-btn">add to cart</a>
                    <a href="#" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>튤립</h3>
                <h4>뷰티/핑크/옐로/화이트/레드</h4>
                <div class="price"> $39,000 <span>$44,000</span> </div>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="images/img-5.jpg" alt="">
                <div class="icons">
                    <a href="#" class="cart-btn">add to cart</a>
                    <a href="#" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>카네이션</h3>
                <h4>레드/핑크/화이트/믹스</h4>
                <div class="price"> $44,000 <span>$49,000</span> </div>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="images/img-6.jpg" alt="">
                <div class="icons">
                    <a href="#" class="cart-btn">add to cart</a>
                    <a href="#" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>야생화</h3>
                <h4>옐로/핑크/화이트/퍼플</h4>
                <div class="price"> $49,000 <span>$54,000</span> </div>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="images/img-7.jpg" alt="">
                <div class="icons">
                    <a href="#" class="cart-btn">add to cart</a>
                    <a href="#" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>벚꽃</h3>
                <h4>화이트핑크/핫핑크/베이비핑크/핑크</h4>
                <div class="price"> $59,000 <span>$64,000</span> </div>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="images/img-8.jpg" alt="">
                <div class="icons">
                    <a href="#" class="cart-btn">add to cart</a>
                    <a href="#" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>동백</h3>
                <h4>레드/화이크/옐로/딥핑크</h4>
                <div class="price"> $50,000 <span>$55,000</span> </div>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="images/img-9.jpg" alt="">
                <div class="icons">
                    <a href="#" class="cart-btn">add to cart</a>
                    <a href="#" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>데이지</h3>
                <h4>화이트/핑크/블루</h4>
                <div class="price"> $48,000 <span>$33,000</span> </div>
            </div>
        </div>

    </div>

</section>




<section class="review" id="review">

<h1 class="heading"> customer's <span>review</span> </h1>

<div class="box-container">

    <div class="box">
        <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
        </div>
        <p>월요일 밤 주문, 화요일 배송시작, 수요일 도착했어요! 생신선물인데 너무 예쁘고 만족스러워서 이렇게 후기 남겨요!!! 주문할 때 요구사항이 많아 까다로우셨을텐데도 최대한 반영해주시고 이렇게 예쁘게 보내주셔서 너무 감사합니다 :) 매번 꽃은 여기서 주문해야겠어요! 더 번창하세요! ㅎㅎ</p>
        <div class="user">
            <img src="images/pic-1.png" alt="">
            <div class="user-info">
                <h3>고영숙</h3>
                <span>happy customer</span>
            </div>
        </div>
        <span class="fas fa-quote-right"></span>
    </div>

    <div class="box">
        <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
        </div>
        <p>10개월 된 아기가 이유식 먹을 때 예쁜 꽃을 보면 좋지 않을까 라는 핑계로 구매해봤어요^^ 수국을 좋아해서 부탁드렸더니 예쁘게 푸른빛이 살짝 도는 수국을 함께 보내주셨네요. 감사합니다~! 아기가 자꾸 만지고 싶어해서 꽃잎 못 뜯어내게 말리느라 곤란하긴 해도.. ㅋㅋ 너무 예뻐요!</p>
        <div class="user">
            <img src="images/pic-2.png" alt="">
            <div class="user-info">
                <h3>신미영</h3>
                <span>happy customer</span>
            </div>
        </div>
        <span class="fas fa-quote-right"></span>
    </div>

    <div class="box">
        <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
        </div>
        <p>너무 예뻐요!!! 배송으로 오는 꽃은 왠지 안 예쁘고 질이 안 좋을 것 같은 편견에 매번 집근처 꽃집에서만 꽃을 사다가 이번에 처음으로 주문 해봤는데.. 이럴수가.. 최근 1년간 구입한 꽃 중에서 제일 상태좋고 예뻐요..!! 가족들도 꽃 너무 잘 샀다고 화사하다고 좋아해주고 넘 성공적이에요! 사장님 번창하세요!!!!</p>
        <div class="user">
            <img src="images/pic-3.png" alt="">
            <div class="user-info">
                <h3>조서윤</h3>
                <span>happy customer</span>
            </div>
        </div>
        <span class="fas fa-quote-right"></span>
    </div>

</div>
    
</section>



<section class="contact" id="contact">

    <h1 class="heading"> <span> contact </span> us </h1>

    <div class="row">

        <form action="">
            <input type="text" placeholder="name" class="box">
            <input type="email" placeholder="email" class="box">
            <input type="number" placeholder="number" class="box">
            <textarea name="" class="box" placeholder="message" id="" cols="30" rows="10"></textarea>
            <input type="submit" value="send message" class="btn">
        </form>

        <div class="image">
            <img src="images/contact-img.png" alt="">
        </div>

    </div>

</section>



<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3>quick links</h3>
            <a href="#">home</a>
            <a href="#">about</a>
            <a href="#">products</a>
            <a href="#">review</a>
            <a href="#">contact</a>
        </div>

        <div class="box">
            <h3>Customer Center</h3>
            <h3>1234-1234</h3>
            <a href="#">월-금: am10:00-pm5:00</a>
            <a href="#">점심시간: pm12:00-pm1:00</a>
            <a href="#">휴일: 토/일/공휴일</a>
        </div>

        <div class="box">
            <h3>Bank Accont</h3>
            <a href="#">KB 123456-01-123456</a>
            <a href="#">예금주:(주) B.Bloom Company</a>
        </div>

        <div class="box">
            <h3>Community</h3>
            <a href="#">NOTICE</a>
            <a href="#">EVENT</a>
            <a href="#">Q&A</a>
            <a href="#">FAQ</a>
        </div>

    </div>

</section>
</body>
</html>