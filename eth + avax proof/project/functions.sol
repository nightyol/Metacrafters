pragma solidity ^0.8.0;

contract MyContract {
    uint public data;

    function getData() public view returns (uint) {
        return data;
    }

    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
}

contract DerivedContract is MyContract {
    function readData() public view returns (uint) {
        return getData();
    }

    function calculate(uint a, uint b) public pure returns (uint) {
        return add(a, b);
    }

    function deposit() public payable {
        data += msg.value;
    }
}
