// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract Error_handling {
    function mul(uint i) public pure returns(uint) {
        require(i > 0, "Input must be greater than 0");
        return i*2;
    }

    function divBy2(uint i) public pure returns(uint) {
        require(i > 2, "Input must be greater than 2");
        return i/2;
    }

    function square(uint i) public pure returns(uint) {
        if (i <= 0) {
            revert("Input must be greater than 0");
        }
        else{
            return i*i;
        }
    }

    uint public num = 0;

    function add() public view returns(uint){
        assert(num >= 0);
        return num + 2;
    }
    function div(uint a, uint b) public pure returns(uint){
        assert(b > 0 && a > 0);
        return a/b;
    }
}
