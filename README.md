# eth-avax


This Solidity program is a Module 1  Project program that demonstrates the basic syntax and functionality of the Solidity programming language.
## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The purpose of this program is to perform Error Handling using require(), revert(), and assert() statements . The contract has three functions , first one returns the multiply with 2 of a number , in this require() statement is used . In second function it returns the square of a number , in this revert() statement is used and in third one it just add 2 to the number , in this assert() statement is used . This program serves as a simple and straightforward introduction to Solidity programming, and can be used as a stepping stone for more complex projects in the future.
We use these three methods in error-handling process in solidity:

* require(): which is used to validate some condition before execution of the rest of the function body. it takes 2 parameters, first the condition and second the text which wiil be displayed.
* assert(): this is similar to require , but only takes one parameter i.e condition which is needed to be checked.
* revert(): this function used to flag an error , if the condition are not met , then this will revert back all the function in its initial state and also used to save gas .

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a.sol extension (e.g., project.sol). Copy and paste the following code into the file:

```solidity
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

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.7" (or another compatible version), and then click on the "Compile project.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "project" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling all the functions. 

## Author

Harsh Kumar Sharma
STUDENT
CHANDIGARH UNIVERSITY
