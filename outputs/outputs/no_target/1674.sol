pragma solidity ^0.8.0;
contract Semantic0015b {
    uint256 input;
    function f(uint256 input) public {
        if(input > 4294967295)
        {
            this.input = 5;
        } else
        {
            this.input = this.input + 1;
        }
    }
    function g(uint256 input) public {
        if(input > 4294967295) {
            input = 8;
        } else
        {
            input = input + 1;
        }
    }
}
address = 0xa3D76f7F79a3D9Caa548ab27885D491B73799A1e

pragma solidity ^0.8.0;
contract Semantic0016a {
    uint256 input = 0;

    function f(uint256 input) public{
        input = input + 1;
    }
}
address = 0xFF624d0C58Fd042020c2A480A117b75612a04257

pragma solidity ^0.8.0;
contract Semantic0016b {
    uint256 input;

    function f(uint256 input) public{
        if (input!= 1) {
            revert("Invalid input");
        }
    }
    function g(uint256 input) public{
        if(input!= 2)
        {
            this.input = 2;
            revert("Invalid input");
        }
    }
    function h(uint256 input) public{
        if(input!= 3)
        {
            this.input = 3;
            this.in_valid();
        }
    }
}
address = 0x7bE158223F8C1D0486c862C4301AbCE0D19C7381

pragma solidity ^0.8.0;
contract Semantic0016c {
    uint256 input;

    function f(uint256 input) public{
        if (input!= 1)
        {
            this.input = input + 1;
            if (input!= 11)
            {
                this.in_valid();
            }
        }
    }
    function g(uint256 input) public{
        if (input!= 2)
        {
            this.input = input + 2;
            this.in_valid();
        }
    }
}
address = 0x8eF7
