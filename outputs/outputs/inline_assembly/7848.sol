pragma solidity ^0.8.0;
contract L22{
    function modifier() public {
        _;
    }
    function notModifier() public {
        assembly {
            mstore(100, 42)
            return(0, 0)
        }
    }
    modifier modifier2() public {
        _;
    }
    function notModifier2() public {
        assembly {
            mstore(100, 42)
            return(0, 0)
        }
    }
    function notModifier3() public {
        assembly {
            mstore(100, 42)
            return(0, 0)
        }
    }
    function notModifier4() public {
        assembly {
            mstore(100, 42)
            return(0, 0)
        }
    }
    function modifier3() public {
        _;
    }
    function modifier4() public {
        _;
    }
    function modifier5() public {
        _;
    }
    function modifier6() public {
        _;
    }
    function notModifier6() public {
        assembly {
            mstore(100, 42)
            return(0, 0)
        }
    }
    function notModifier7() public {
        assembly {
            mstore(100, 42)
            return(0, 0)
        }
    }
    function modifier7() public {
        _;
    }
}

pragma solidity ^0.8.0;
contract L19{
    function sum(uint a, uint b) public pure return (uint) {
    assembly {
        a := add(a, b)
        return(a)
    }
    }
}

pragma solidity ^0.8.0;
contract L20{

    function getOne() public view returns (uint256) {
        uint _x;
        assembly {
            _x := mload(42)
        }
        return _x;
    }

    function setOne(uint256 x) public {
        assembly {
            mstore(42, x)
        }
    }
}<jupyter_output><empty_output>
