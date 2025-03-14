pragma solidity ^0.8.0;
contract MutationEquivalence84
{
    uint24 _arr1[1];
    uint256 _arr2[3];
    uint256 _arr3[6];
    uint256 _arr4[8];
    address _arr5[1];
    uint128 _arr6[1];
    uint160 _arr7[1];
    uint64 _arr8[1];
    uint32 _arr9[1];
    uint256 _arr10[1];
    uint192 _arr11[1];
    bytes32 _arr12[1];
    uint8 _arr13[1];
    mapping(address => uint) arr14;


    function checkEqual(uint[] memory a, uint b) public {
        require(a[0] == b);
    }

    function checkEqual(uint24[] memory a, uint b) public {
        require(a[0] == b);
    }

    function checkEqual(uint256[] memory a, uint b) public {
        require(a[0] == b);
    }

    function checkEqual(uint32[] memory a, uint b) public {
        require(a[0] == b);
    }

    function checkEqual(uint64[] memory a, uint b) public {
        require(a[0] == b);
    }

    function checkEqual(uint8[] memory a, uint b) public {
        require(a[0] == b);
    }

    function checkEqual(uint128[] memory a, uint b) public {
        require(a[0] == b);
    }

    function checkEqual(int128[] memory a, uint b) public {
        require(a[0] == b);
    }

    function checkEqual(int256[] memory a, uint b) public {
        require(a[0] == b);
    }

    function checkEqual(int32[] memory a, uint b) public {
        require(a[0] == b);
    }

    function checkEqual(int64[] memory a, uint b) public {
        require(a[0] == b);
    }

    function checkEqual(uint160[] memory a, bytes32 b) public {
        require(a[0] == b);
    }


    function checkEqual(uint24[][] memory a, uint b) public {
        uint[] memory newA;
        newA.length = a.length;
        uint i = 0;
        for (uint j = 0; j < newA.length; j++) {
            newA[j] = a[i][j];

        }
        require(newA[0] == b);
        require(newA[1] == b);
    }

    function checkEqual(uint256[] memory a, uint b) public {
        uint[] memory newA;
        newA.length = a.length;
        uint i = 0;
        for (uint j = 0; j < newA.length; j++) {
            newA[j] = a[i
