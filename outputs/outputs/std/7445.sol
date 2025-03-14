pragma solidity ^0.8.0;
contract Mutate {
    uint256[2] internal first;
    uint256[2] internal second;
    uint256[2] public third;
    uint256[2] public fourth;
    uint256[2] public fifth;
    function mutateFirst(uint256[] memory array) public view returns (uint256) { first = array[0];  }
    function mutateSecond(uint256[] memory array) public view returns (uint256) { second = array[1];  }
    function mutateThird(uint256[] memory array) public view returns (uint256) { third = array;  }
    function mutateForth(uint256[] memory array) public view returns (uint256) { fourth = array;  }
    function mutateFifth(uint256[] memory array) public view returns (uint256) { fifth = array;  }
}





function mutateFromFirst2(uint256[2] memory arrayIn) public view returns (uint256) {
    return arrayIn[2];
}

function mutateFromSecond2(uint256[2] memory arrayIn) public view returns (uint256) {
    return arrayIn[0];
}

function mutateFromLast2(uint256[2] memory arrayIn) public view returns (uint256) {
    return arrayIn[1];
}
