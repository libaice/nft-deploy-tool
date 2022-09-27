// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract BasicNFT is ERC721 {
    uint private tokenCounter;
    string public constant TOKEN_URI =
        "ipfs://bafybeig37ioir76s7mg5oobetncojcm3c3hxasyd4rvid4jqhy4gkaheg4/?filename=0-PUG.json";

    constructor() ERC721("DOGE NFT", "DOG") {}

    function mintNFT() public returns (uint256) {
        _safeMint(msg.sender, tokenCounter);
        tokenCounter += 1;
        return tokenCounter;
    }

    function tokenURI(uint256 tokenId) public view  virtual override returns (string memory){
        return TOKEN_URI;
    }

    function getTokenCounter() public view returns (uint256) {
        return tokenCounter;
    }
}
