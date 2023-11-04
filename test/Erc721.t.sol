// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import { ERC721Mintable } from "../src/Erc721.sol";
import { ERC721AMintable } from "../src/Erc721a.sol";

contract ERC721ATest is Test {

    ERC721Mintable erc721;
    ERC721AMintable erc721a;

    address user1 = makeAddr("user1");

    function setUp() public {
        erc721 = new ERC721Mintable("surf", "surf"); 
        erc721a = new ERC721AMintable("surf", "surf");
    }

    function testERC721Mint() public {
        erc721.mint(0);
    }

    function testERC721AMint() public {
        erc721a.mint(1);
    }

    function testERC721Mint5NFT() public {
        erc721.mint(0);
        erc721.mint(1);
        erc721.mint(2);
        erc721.mint(3);
        erc721.mint(4);
    }

    function testERC721AMint5NFT() public {
        erc721a.mint(5);
    }

    function testERC721Transfer() public {
        erc721.mint(0);
        erc721.transferFrom(address(this), user1, 0);
    }

    function testERC721ATransfer() public {
        erc721a.mint(1);
        erc721a.transferFrom(address(this), user1, 0);
    }

    function testERC721Approve() public {
        erc721.mint(0);
        erc721.approve(user1, 0);
    }

    function testERC721AApprove() public {
        erc721a.mint(1);
        erc721a.approve(user1, 0);
    }
}