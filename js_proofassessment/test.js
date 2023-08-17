/*
Assessment Requirements
1. Create a variable that can hold a number of NFT's. What type of variable might this be?
2. Create an object inside your mintNFT function that will hold the metadata for your NFTs. 
   The metadata values will be passed to the function as parameters. When the NFT is ready, 
   you will store it in the variable you created in step 1
3. Your listNFTs() function will print all of your NFTs metadata to the console (i.e. console.log("Name: " + someNFT.name))
4. For good measure, getTotalSupply() should return the number of NFT's you have created
*/



let nftCount = 0;
const nfts = [];

function mintNFT(_name, _brand, _bling, _shirtType) {
  const nft = {
    name: _name,
    brand: _brand,
    bling: _bling,
    shirtType: _shirtType
  };
  nfts.push(nft);
  nftCount++;
  return nft;
}

function listNFTs() {
  for (let i = 0; i < nftCount; i++) {
    const nft = nfts[i];
    console.log("Name: " + nft.name);
    console.log("brad: " + nft.brand);
    console.log("Bling: " + nft.bling);
    console.log("TShirt Type: " + nft.tshirtType);
    console.log("------------------------");
  }
}

function getTotalSupply() {
  return nftCount;
}

const nft1 = mintNFT("Critter", "Bluestack", "Gold", "Hoodie");
const nft2 = mintNFT("Crawler", "Redwolf", "Silver", "T-Shirt");
const nft3 = mintNFT("Persian", "Greyst", "Platinum", "Blouse");
const nft4 = mintNFT("Whiskers", "Gtag", "Diamond", "Jacket");
const nft5 = mintNFT("Meowington", " neo", "Emerald", "Sweater");
const nft6 = mintNFT("Pawly", "allen", "Ruby", "Tank Top");

listNFTs();
console.log("Total NFTs: " + getTotalSupply());
