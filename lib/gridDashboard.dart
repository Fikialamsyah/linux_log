import 'package:flutter/material.dart';
import 'package:linux_log/detailPage.dart';
import 'package:linux_log/model/linuxData.dart';

class GridDashboard extends StatefulWidget {
  @override
  _GridDashboard createState() => _GridDashboard();
}

class _GridDashboard extends State<GridDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('LinuxLog', style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              child: GridView.count(
        crossAxisCount: 2,
        children: linuxData.map((place) {
          return FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailPage(place: place);
              }));
            },
            child: Card(
              child: InkWell(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Expanded(
                        flex: 1,
                        child: Image.asset(place.logoImages, width: 100, height: 100,)
                    )),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Expanded (
                        flex: 2,
                          child: Text(
                          place.name, 
                          style: TextStyle(
                            fontSize: 15
                          ),),
                      )
                    )
                  ],
                ),
              ),
            ),
          );
        }).toList()),
            )
          ],
        ),
        
      )
    );
  }
}

// Array data linuxLog
var linuxData = [
  LinuxData(
      name: 'Ubuntu',
      logoImages: 'assets/images/ubuntu.png',
      description:
          'Ubuntu merupakan salah satu distribusi Linux yang berbasis Debian dan didistribusikan sebagai perangkat lunak bebas. Ubuntu ditawarkan dalam tiga edisi resmi: Ubuntu Desktop untuk komputer pribadi, Ubuntu Server untuk server dan komputasi awan, dan Ubuntu Core untuk "Internet untuk Segala", perangkat kecil dan robot.',
      developer: 'Canocical Ltd.',
      desktop: 'Gnome',
      desktopImages: 'assets/images/desktop-ubuntu.png',
      url: 'https://ubuntu.com/download/desktop'),
  LinuxData(
      name: 'Debian',
      logoImages: 'assets/images/debian.png',
      description:
          'Debian adalah sistem operasi komputer yang tersusun dari paket-paket perangkat lunak yang dirilis sebagai perangkat lunak bebas dan terbuka dengan lisensi mayoritas GNU General Public License dan lisensi perangkat lunak bebas lainnya',
      developer: 'The Debian Project',
      desktop: 'Gnome',
      desktopImages: 'assets/images/desktop-debian.jpg',
      url: 'https://www.debian.org/CD/http-ftp/'),
  LinuxData(
      name: 'Fedora',
      logoImages: 'assets/images/fedora.png',
      description:
          'Fedora adalah sebuah distro Linux berbasis RPM dan yum yang dikembangkan oleh Fedora Project yang didukung oleh komunitas pemrogram serta disponsori oleh Red Hat. Nama Fedora berasal dari karakter fedora yang digunakan di logo Red Hat. ',
      developer: 'The Fedora Project',
      desktop: 'Gnome',
      desktopImages: 'assets/images/desktop-fedora.png',
      url: 'https://getfedora.org/' ),
  LinuxData(
      name: 'Pop OS!',
      logoImages: 'assets/images/pop-os.png',
      description:
          'Pop! _OS adalah sistem operasi untuk STEM dan profesional kreatif yang menggunakan komputer mereka sebagai alat untuk menemukan dan membuat. Bebaskan potensi Anda pada perangkat lunak sumber terbuka yang aman dan andal. Berdasarkan keingintahuan Anda yang luar biasa, kami rasa Anda memiliki banyak hal.',
      developer: 'System 76',
      desktop: 'Gnome',
      desktopImages: 'assets/images/desktop-pop.png',
      url: 'https://pop.system76.com/'),
  LinuxData(
      name: 'Kubuntu',
      logoImages: 'assets/images/kubuntu.png',
      description:
          'Kubuntu merupakan varian resmi dari Ubuntu yang menggunakan KDE sebagai lingkungan desktop-nya, berbeda dengan Ubuntu yang menggunakan GNOME dan Xubuntu yang menggunakan Xfce sebagai lingkungan desktop-nya. Kubuntu didistribusikan secara bebas, Kubuntu bisa didapatkan dengan cuma-cuma, baik melalui media unduh.',
      developer: 'Blue Systems',
      desktop: 'Gnome',
      desktopImages: 'assets/images/desktop-kubuntu.png',
      url: 'https://kubuntu.org/getkubuntu/'),
  LinuxData(
      name: 'Kali Linux',
      logoImages: 'assets/images/kali.png',
      description:
          'Kali Linux adalah distro turunan Debian dan juga penerus BackTrack yang digunakan untuk melakukan penetrasi pada jaringan. Kali Linux memiliki ±300 tools yang ada di dalamnya dengan fungsi masing-masing. Kali Linux juga bersifat Live CD dan Installasi manual.',
      developer: 'Offensive Security',
      desktop: 'Gnome',
      desktopImages: 'assets/images/desktop-kali.png',
      url: 'https://www.kali.org/downloads/'),
  LinuxData(
      name: 'Linux Mint',
      logoImages: 'assets/images/linux-mint.png',
      description:
          'Linux Mint merupakan distribusi Linux berbasis Debian-Ubuntu yang bertujuan untuk "membuat sistem operasi yang modern, elegan, dan nyaman yang kuat dan mudah dipakai". Dibuat oleh Clement Lefebvre, dan dikembangkan secara aktif oleh tim maupun komunitas yang ada di dalamnya. ',
      developer: 'Comunity',
      desktop: 'Gnome',
      desktopImages: 'assets/images/desktop-mint.png',
      url: 'https://www.linuxmint.com/download.php'),
  LinuxData(
      name: 'Open Suse',
      logoImages: 'assets/images/open-suse.png',
      description:
          'openSUSE adalah sistem operasi komputer yang dibangun di atas kernel Linux. openSUSE dikembangkan secara independen, dengan dukungan komunitas melalui Proyek openSUSE yang disponsori oleh SUSE dan sejumlah perusahaan lain.',
      developer: 'The Open Suse Project',
      desktop: 'Gnome',
      desktopImages: 'assets/images/desktop-opensuse.jpg',
      url: 'https://software.opensuse.org/')
];
