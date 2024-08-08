// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "node_modules/@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NFT is ERC721 {
    constructor() ERC721("MyNFT", "MNFT") {}

    function mint(address to, uint256 tokenId) external {
        _mint(to, tokenId);
    }
}
