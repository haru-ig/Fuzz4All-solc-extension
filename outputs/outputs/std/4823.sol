pragma solidity ^0.8.0;
contract H {
    uint x;
    uint public myInt = 527804655;

    constructor() {
        x = 1;
        myInt = 1;
    }

    function method1(uint x) {
        myInt += x;
        x = 3;
    }

    function method2(uint x) {
        if (x == 2) {
            myInt *= 5;
        } else {
            x = x + 1;
        }
    }

    function method3(uint x) public returns (uint) {
        uint y;
        uint z = 233;
        for (uint i = 0; i < x; i++) {
            y+= z;
        }
        z = 1;
    }
}<jupyter_text>To compile the Solidity contract above, a compiler is required. You have 8 basic options for downloading the compiler, and if you're on a Linux/Mac machine, you can just run: ```sudo apt install solidity``` Or, if on windows, run: ```cd C:\Users\<your-username>/AppData/Roaming/npm``` and then run ```npx solc --network localhost --compile-all --bin --abi EtherTest.sol``` You should get a file called EtherTest.bin and EtherTest.abi in the same folder, so you can compile and use the contract by simply calling the appropriate functions. Note that you don't need Solidity to compile and use your contracts, you can just run an individual EtherTest.sol contract using a standard Solidity compiler. When you want to use an EtherTest contract you must have 6.828125 Ether (29.291250513502926 Ether) on your account. We recommend that you create 2 different addresses for testing. One for testing and one for production. Since testing has 6.828125 Ether, we recommend that you put your testing 33333333333333333333333 of real money in an address that just balances 3333333333333333333333 of Ether. For more details, please refer to the FAQ about getting more money!<jupyter_code>
pragma solidity ^0.8.0;
contract EtherTest {
    address public test = 0xB82981363c0cc5d6E7051bB19bF40E8C7B34E157;

    address public production = 0x07B4A9678B6011D25fD2897b2A08F3E13fE2a118;

    event newAddress(address address);
