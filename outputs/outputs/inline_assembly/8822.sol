pragma solidity ^0.8.0;
contract Test
{
    uint constant int_max = 2**36 - 1;
    uint x = 2**36 - 1;
    uint y = 2**36 - 2;
    uint z = x;
    function test() public {
        z *= y;
    }
}
```
</details>

You can modify your contracts using a variety of text editors! There is a large variety of text editors and IDEs available on the Internet. If you're completely new to Solidity, a recommended text editor is [Visual Studio Code](https://code.visualstudio.com/). If you're using Visual Studio Code, Solidity IDE extensions can be found [here](https:

## 1.1.5. How to Write a Smart Contract

To create a smart contract in Solidity, you need to create a [Solidity file](#1-1-4-example-contracts-solidity-files). Before that, you need to create a contract [definition file](#1-1-2-the-contract-definition-file-contract-json). This file contains definitions of parameters, functions and storage.

![Contract with parameters, actions and storage defined](./img/chapter-01/01-07-01.jpg)

<details><summary>Click here to expand</summary>
Here's a sample contract with two parameters, an action and a storage field:

``` solidity
    contract Test
    {
        bytes32 secret;
        mapping(address => uint) private storageCount;
        uint public max;

        constructor (address _creator) public
        {
            max = int_max;
            secret = hex"1122334455667788";
        }
        function testAdd() public {
            storageCount[msg.sender] += 1;
        }
        function testSubtract() public {
            storageCount[msg.sender] -= 1;
        }
        function testMultiply() public {
            storageCount[msg.sender] *= 3;
        }
        function testDivide() public {
            storageCount[msg.sender] /= 2;
        }
        function testEquals() public {
            storageCount[msg.sender] = 0;
            emit Add(msg.sender, 1);
        }
        function testCheck() public {
            require(msg.sender == msg.sender);
        }
    }

```

Note that the contract
