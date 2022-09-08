// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol"; 
import "@openzeppelin/contracts/access/Ownable.sol";

contract Collection is ERC721URIStorage, Ownable {

    uint256 tokenId = 0;

    constructor() ERC721 ('Learning Certificates', 'LCE') {}

    function mint(string memory uri) public onlyOwner {
        _mint(msg.sender, tokenId);
        _setTokenURI(tokenId, uri);
        tokenId++;
        
    }

}