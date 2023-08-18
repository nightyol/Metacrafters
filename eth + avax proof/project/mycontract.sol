pragma solidity ^0.8.0;

contract MyContract {
    address private owner;

    constructor() {
        owner = msg.sender;
    }

    function withdraw(uint amount) public {
        require(amount > 0, "Amount must be greater than zero");
        
        uint balance = address(this).balance;
        require(balance >= amount, "Insufficient contract balance");
        
        (bool success, ) = msg.sender.call{value: amount}("");
        assert(success);
        
        revert("Withdrawal failed");
    }

    function getContractBalance() public view returns (uint) {
        return address(this).balance;
    }
}

