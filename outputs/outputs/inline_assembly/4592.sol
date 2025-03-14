pragma solidity ^0.8.0;
contract emulator {
    function getZero() public pure returns (uint) { return 0; }
    function increaseZ(address user) public {
        uint z = 0;
        for(uint i=0; i<1000; i++){
            z += i * i * 0.5;
        }
        address(this).transfer(z+1);
    }
    function decreaseZ(address user) public {
        uint x;
        uint z;
        for(uint i=0; i<1000; i++){
            x = x + 1; z = z * x;
        }
        address(this).transfer(z);
    }
}
contract emulator2_emul {
    function increaseZ(address user) public {
        uint z = new emulator(msg.sender).getZero();
        for(uint i=0; i<1000; i++){
            z += i * i * 0.5;
        }
        address(this).transfer(z+1);
    }
    function decreaseZ(address user) public {
        uint x; uint z;
        for(uint i=0; i<1000; i++){
            x = x + 1; z = z * x;
        }
        address(this).transfer(z);
    }
}
```
<!-- #endregion -->


## External state for a contract
If you declare an existing constant variable or storage variable as external, the compiler will not check if said variable is modified outside of a contract, which means that a contract malicious or unauthorized modification of a variable or storage variable might be revealed in that contract.

<!-- MOODLE BEGIN_SECTION: reply_answers -->
<!-- id: 363191 -->
<!-- end -->



<!-- id: 364196 -->
<!-- MOODLE BEGIN_SECTION: reply_answers -->
<!-- id: 347034 -->
<!-- end -->



## Example of externally modified state.
Please make the following calls from Solidity console (Solidity 0.8.7) to print the value of both `x` and `z` after contract code has been executed.

```
> contract emulator2 { function test() public returns(uint) { z = 10000000000000
