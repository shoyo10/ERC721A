// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

import { ERC721A } from "ERC721A/ERC721A.sol";

contract ERC721AMintable is ERC721A {
    constructor(string memory name, string memory symbol) ERC721A(name, symbol) {}

    function mint(uint256 quantity) public {
        _mint(msg.sender, quantity);
    }
}