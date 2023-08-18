// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenGamingToken is ERC20, Ownable {
    mapping(string => uint256) private _itemPrices;

    event ItemRedeemed(address indexed player, string item);

    constructor() ERC20("Degen Gaming Token", "DGT") {
        _mint(msg.sender, 1000000 * 10**decimals());
    }

    function mintTokens(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
        emit Transfer(address(0), account, amount);
    }

    function redeemItem(string memory item) public {
        require(_itemPrices[item] > 0, "Item not available for redemption");
        require(balanceOf(msg.sender) >= _itemPrices[item], "Insufficient balance");

        _transfer(msg.sender, owner(), _itemPrices[item]);

        emit ItemRedeemed(msg.sender, item);
    }

    function addItem(string memory item, uint256 price) public onlyOwner {
        require(price > 0, "Price must be greater than zero");
        _itemPrices[item] = price;
    }

    function getItemPrice(string memory item) public view returns (uint256) {
        return _itemPrices[item];
    }

    function burnTokens(uint256 amount) public {
        require(amount > 0, "Amount must be greater than zero");
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");

        _burn(msg.sender, amount);
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenGamingToken is ERC20, Ownable {
    mapping(string => uint256) private _itemPrices;

    event ItemRedeemed(address indexed player, string item);

    constructor() ERC20("Degen Gaming Token", "DGT") {
        _mint(msg.sender, 1000000 * 10**decimals());
    }

    function mintTokens(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
        emit Transfer(address(0), account, amount);
    }

    function redeemItem(string memory item) public {
        require(_itemPrices[item] > 0, "Item not available for redemption");
        require(balanceOf(msg.sender) >= _itemPrices[item], "Insufficient balance");

        _transfer(msg.sender, owner(), _itemPrices[item]);

        emit ItemRedeemed(msg.sender, item);
    }

    function addItem(string memory item, uint256 price) public onlyOwner {
        require(price > 0, "Price must be greater than zero");
        _itemPrices[item] = price;
    }

    function getItemPrice(string memory item) public view returns (uint256) {
        return _itemPrices[item];
    }

    function burnTokens(uint256 amount) public {
        require(amount > 0, "Amount must be greater than zero");
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");

        _burn(msg.sender, amount);
    }
}

