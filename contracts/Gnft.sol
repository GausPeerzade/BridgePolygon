// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "erc721a/contracts/ERC721A.sol";

contract Gnft is ERC721A {
    constructor() ERC721A("GausNFT", "Gnft") {}

    function mint(uint256 quantity) external payable {
        // quantity is the amount nfts you want to mint
        _mint(msg.sender, quantity);
    }

    function _baseURI() internal view virtual override returns (string memory) {
        return "ipfs://Qme7hsHVKXa3xKY5qohWGc21U1TmnNknDuaxnqAhy6oGZ3/";
    }

    function promptDescription() external pure returns (string memory) {
        return
            "miles morales in full spiderman costume mugshot , black and white , pencil sketch , comic book type style";
    }
}
