
<!DOCTYPE html>
<html lang="id">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Satria Arifin | Profile</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    scroll-behavior: smooth;
}

body {
    font-family: Arial, sans-serif;
    color: white;
    background: linear-gradient(135deg, #17070e, #641b32, #260b15);
    min-height: 100vh;
}

header {
    padding: 25px 8%;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.logo {
    font-size: 25px;
    font-weight: bold;
    color: #f3b1c0;
}

nav a {
    color: white;
    text-decoration: none;
    margin-left: 20px;
}

nav a:hover {
    color: #f3a2b5;
}

.hero {
    min-height: 85vh;
    display: flex;
    align-items: center;
    justify-content: space-around;
    padding: 50px 8%;
    gap: 30px;
}

.hero-text h3 {
    color: #e99aaa;
    letter-spacing: 4px;
}

.hero-text h1 {
    font-size: 55px;
    margin: 15px 0;
}

.hero-text h1 span {
    color: #e99aaa;
}

.hero-text p {
    color: #e5cbd2;
    max-width: 500px;
    line-height: 1.8;
}

.profile {
    width: 260px;
    height: 260px;
    border-radius: 50%;
    background: linear-gradient(135deg, #a83d55, #300d1c);
    border: 5px solid #d77c93;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 75px;
    font-weight: bold;
    color: white;
    box-shadow: 0 0 40px #8d304c;
}

.btn {
    display: inline-block;
    margin-top: 25px;
    padding: 13px 25px;
    background: linear-gradient(90deg, #a83d55, #641b32);
    border-radius: 30px;
    color: white;
    text-decoration: none;
}

section {
    padding: 70px 8%;
}

.title {
    text-align: center;
    font-size: 32px;
    margin-bottom: 35px;
    color: #f0a4b5;
}

.card-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
    gap: 22px;
}

.card {
    background: rgba(255,255,255,0.08);
    border: 1px solid rgba(255,255,255,0.15);
    padding: 30px;
    border-radius: 18px;
    text-align: center;
    transition: 0.3s;
}

.card:hover {
    transform: translateY(-8px);
    background: rgba(168,61,85,0.3);
}

.card h3 {
    margin: 15px 0;
    color: #f3b1c0;
}

.card p {
    color: #e5cbd2;
    line-height: 1.7;
}

.icon {
    font-size: 45px;
}

.about {
    max-width: 750px;
    margin: auto;
    background: rgba(255,255,255,0.08);
    padding: 30px;
    border-radius: 18px;
    line-height: 2;
}

.about p {
    border-bottom: 1px solid rgba(255,255,255,0.12);
}

.about strong {
    color: #f3b1c0;
}

footer {
    text-align: center;
    padding: 25px;
    background: rgba(0,0,0,0.2);
    color: #d9c2c9;
}

@media(max-width: 700px) {
    header {
        flex-direction: column;
        gap: 20px;
    }

    nav a {
        margin: 0 7px;
        font-size: 13px;
    }

    .hero {
        flex-direction: column-reverse;
        text-align: center;
    }

    .hero-text h1 {
        font-size: 40px;
    }

    .profile {
        width: 190px;
        height: 190px;
        font-size: 55px;
    }
}
</style>
</head>

<body>

<header>
    <div class="logo">SA.</div>
    <nav>
        <a href="#home">Home</a>
        <a href="#about">Profil</a>
        <a href="#skill">Skill</a>
        <a href="#hobi">Hobi</a>
    </nav>
</header>

<!-- HOME -->
<div class="hero" id="home">
    <div class="hero-text">
        <h3>PERSONAL PROFILE</h3>
        <h1>Hallo, Saya<br>
        <span>Satria Arifin</span></h1>
        <p>
            Selamat datang di website pribadi saya.
            Saya memiliki ketertarikan dalam dunia
            teknologi jaringan dan olahraga.
        </p>
        <a href="#about" class="btn">Tentang Saya</a>
    </div>

    <div class="profile">SA</div>
</div>

<!-- PROFIL -->
<section id="about">
    <h2 class="title">Tentang Saya</h2>

    <div class="about">
        <p><strong>Nama:</strong> Satria Arifin</p>
        <p><strong>Email:</strong> satriyaarifin88@gmail.com</p>
        <p><strong>Alamat:</strong> Kabupaten Blitar, Nglegok</p>
        <p><strong>Keahlian:</strong> Instalasi Jaringan WiFi</p>
        <p><strong>Hobi:</strong> Kick Boxing dan Badminton</p>
    </div>
</section>

<!-- SKILL -->
<section id="skill">
    <h2 class="title">Keahlian Saya</h2>

    <div class="card-container">
        <div class="card">
            <div class="icon">📡</div>
            <h3>Instalasi WiFi</h3>
            <p>
                Memiliki keterampilan dalam
                pemasangan dan instalasi jaringan WiFi.
            </p>
        </div>

        <div class="card">
            <div class="icon">🛠️</div>
            <h3>Jaringan Komputer</h3>
            <p>
                Mempelajari perangkat dan
                konfigurasi jaringan komputer.
            </p>
        </div>
    </div>
</section>

<!-- HOBI -->
<section id="hobi">
    <h2 class="title">Hobi Saya</h2>

    <div class="card-container">
        <div class="card">
            <div class="icon">🥊</div>
            <h3>Kick Boxing</h3>
            <p>
                Melatih disiplin, fokus,
                dan sportivitas melalui olahraga.
            </p>
        </div>

        <div class="card">
            <div class="icon">🏸</div>
            <h3>Badminton</h3>
            <p>
                Menikmati olahraga dan
                bermain bersama teman.
            </p>
        </div>
    </div>
</section>

<!-- GALERI -->
<section id="galeri">
    <h2 class="title">Galeri Aktivitas</h2>

    <div class="card-container">
        <div class="card">
            <div class="icon">🥊</div>
            <h3>Kick Boxing</h3>
            <p>
                Dokumentasi aktivitas dan
                latihan olahraga kick boxing.
            </p>
        </div>
    </div>
</section>

<footer>
    <p>© 2026 Satria Arifin</p>
    <p>Personal Website | Maroon Edition</p>
</footer>

</body>
</html>
