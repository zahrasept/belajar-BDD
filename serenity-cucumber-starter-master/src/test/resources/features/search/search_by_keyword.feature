Feature: Search by keyword

  Scenario: Searching for a term
    Given Sergey is researching things on the internet
    When he looks up "Cucumber"
    Then he should see information about "Cucumber"

  Scenario: Sign In Linkedin
    Given Pengguna berada di Landing Page LinkedIn
    When Pengguna klik button Sign In
    When Pengguna klik textbox Email
    And Pengguna mengetikkan valid email
    When Pengguna klik textbox Password
    And Pengguna mengetikkan valid password
    When Pengguna klik button Sign In
    Then Website menampilkan halaman home LinkedIn

  Scenario: Posting only text on Linkedin
    Given Pengguna sudah melakukan login
    When Pengguna klik menu Home
    When Pengguna klik Start a Post
    When Pengguna klik Anyone
    When Pengguna memilih opsi siapa saja yang dapat melihat
    When Pengguna klik button Save
    When Pengguna klik textbox what do you want to talk about?
    And Pengguna mengetikkan isi pesan yang diinginkan
    When Pengguna klik button Post
    Then Postingan akan tersimpan di Activity

  Scenario: Give reaction like to a friend's post on Linkedin
    Given Pengguna sudah melakukan login
    When Pengguna klik menu Home
    And Pengguna scroll down dan menemukan post yg ingin disukai
    And Pengguna mengarahkan cursor pada icon like
    When Pengguna klik icon like
    Then Icon like akan berubah warna dan like bertambah

  Scenario: Search on Linkedin
    Given Pengguna sudah melakukan login
    When Pengguna klik search bar
    And Pengguna mengetikkan Alterra Academy
    And Pengguna menekan enter
    Then Website menampilkan pencarian mengenai Alterra Academy

  Scenario: Follow Alterra Academy on Linkedin
    Given Pengguna sudah melakukan login
    When Pengguna klik search bar
    And Pengguna mengetikkan Alterra Academy
    And Pengguna menekan enter
    Then Website menampilkan pencarian mengenai Alterra Academy
    When Pengguna klik button Companies
    When Pengguna klik button Follow
    Then Button Follow berubah menjadi following dan Alterra Academy tersimpan di konten Interests

  Scenario: Clear Search History on Linkedin
    Given Pengguna sudah melakukan login
    When Pengguna klik search bar
    When Pengguna klik Clear
    When Pengguna klik button Clear history
    Then  Search History terhapus

  Scenario: New Message on Linkedin
    Given Pengguna sudah melakukan login
    When Pengguna klik messaging
    When Pengguna klik icon new message
    And Pengguna mengetikkan nama pengguna yang dituju
    And Pengguna menekan enter
    When Pengguna klik textbox write a message
    And Pengguna mengetikkan isi pesan yang diinginkan
    When Pengguna klik button send
    Then Pesan akan terkirim ke tujuan

  Scenario: Edit URL LinkedIn
    Given Pengguna sudah melakukan login
    When Pengguna klik Dropdown pada Me
    When Pengguna klik button View Profile
    When Pengguna klik Edit public profile & URL
    Then Website menampilkan public profile setting di halaman baru
    When Pengguna klik icon edit pada Edit your custom URL
    And Pengguna mengetikkan isi URL yang diinginkan
    When Pengguna klik button Save
    Then URL LinkedIn akan terupdate

  Scenario: Add a New Skill on LinkedIn
    Given Pengguna sudah melakukan login
    When Pengguna klik Dropdown pada Me
    When Pengguna klik button View Profile
    When Pengguna klik add a new skill pada konten Skills & Endorsements
    When Pengguna klik add another skill
    And Pengguna mengetikkan Cucumber
    When Pengguna klik cucumber
    Then Cucumber berhasil dipilih
    When Pengguna klik button Save
    Then Cucumber berhasil ditambahkan

  Scenario: Sign Out Linkedin
    Given Pengguna sudah melakukan login
    When Pengguna klik Dropdown pada Me
    When Pengguna klik Sign Out
    When Pengguna klik button Sign Out
    Then Website menampilkan Landing Page LinkedIn