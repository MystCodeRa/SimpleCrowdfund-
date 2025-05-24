# SimpleCrowdfund-
Solidity ile yazılmış basit bir crowdfunding kontratı
Bu proje, Solidity kullanılarak geliştirilen temel bir crowdfunding(bağış toplama) akıllı sözleşmesidir. Proje, Ethereum ağı üzerinde belirli bir hedefe ulaşana kadar bağış toplanmasını sağlar.
Hedefe ulaşıldığında, yalnızca sözleşme sahibi toplanan fonu çekebilir.

## Amaç 
Akıllı sözleşmeler ile merkeziyetsiz finans(DeFi) mantığını öğrenmek ve fon toplama süreçlerini modellemek.

## Özellikler 

- kullanıcılar istedikleri kadar ETH bağışlayabilir.
- Toplanan bağışlar 'amoundRaised' değişkeninde saklanır.
- Hedef miktar ulaşıldığında 'goalReached' aktif olur.
- Yalnızca sözleşme sahibi (owner) fonu çekebilir ('withdraw()').
- Kullanıcılar ayrı ayrı izlenir ('construbutions' mapping ile izle).

 ## Kullanım (Remix ile)
1. [Remix](https:remix.ethereum.org) üzerinden 'SimpleCrowdfund.sol' dosyasını ekleyin.
2. Derleyin ('Solidity Compiler' sekmesi).
3. Deploy ederken hedef miktarı girin (örneğin 1 ether = '1000000000000000000' wei).
4. 'fund()' ile farklı adreslerden bağış yapın.
5. Hedefe ulaşınca, owner 'withdraw()' fonksiyonu ile ETH'yi çeker.

## Öğrendiklerim 
- Constructor ve state değişkenleri
- Mapping yapısı
- 'msg.sender', 'msg value', 'require()'kullanımı
- Remix üzerinden kontrat deploy ve test

## Geliştirme Fikirleri 
- Deadline eklemek
- Refund mekanizması
- Minumum bağış sınırı koymak
