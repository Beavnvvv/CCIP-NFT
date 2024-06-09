// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract CCIPNFT is ERC721URIStorage, Ownable {

    uint256 public tokenId;
    string constant uri = "ipfs://QmYNhb5HVCwML46Sg3dRimM6rZJS1tjBJ52mctsWwqMd68";

    constructor(address initialOwner)
        ERC721("CCIPNFT", "CNFT")
    {}

    function safeMint(address to)
        public
    {
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, uri);
        tokenId++;
    }

}
