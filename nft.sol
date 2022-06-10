// SPDX-License-Identifier: MIT
// Created by Antares Codes
pragma solidity >=0.4.22 <0.9.0;

import "/home/console/contract/openzeppelin-contracts/contracts/token/ERC1155/ERC1155.sol';
import "/home/console/contract/openzeppelin-contracts/contracts/access/Ownable.sol';

contract AntaresCodesNFTs is Ownable, ERC1155 {
    // Base URI
    string private baseURI;
    string public name;

    constructor()
        ERC1155(
            'https://fast.antarescodes.space/nft/{id}.json'
        )
    {
        setName('Antares Codes NFTs');
    }

    function setURI(string memory _newuri) public onlyOwner {
        _setURI(_newuri);
    }

    function setName(string memory _name) public onlyOwner {
        name = _name;
    }

    function mintBatch(uint256[] memory ids, uint256[] memory amounts)
        public
        onlyOwner
    {
        _mintBatch(msg.sender, ids, amounts, '');
    }

    function mint(uint256 id, uint256 amount) public onlyOwner {
        _mint(msg.sender, id, amount, '');
    }
}
