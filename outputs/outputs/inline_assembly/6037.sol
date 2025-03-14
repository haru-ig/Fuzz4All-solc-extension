pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample8 {
    function main() public pure {
        uint256[5] memory values;
        values[2] += 100;
    }
}

pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample9 {
    function main() public pure {
        uint256[5] memory values;
        uint256[5] localValues = values;
    }
}

pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample10 {
    mapping (uint256 => uint256) public map;

    uint256 constant value = 2;
    uint256 constant value2 = 6;

    function main() public view {
        map[value] = 8;
        map[value2] = 12;
    }
}

pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample11 {
    uint256 constant A = 8;
    uint256 constant B = 12;

    uint256 x;

    function setValue(uint256 y) public {
        x = y;
    }

    uint256 getValue() public view returns (uint256 _x) {
        return x;
    }
}




pragma solidity ^0.8.0;

contract MutatedSemanticallyEquivalentAssemblyExample12 {
    uint8[40] memory v0;
    mapping (uint8 => uint8) public v1;
    bool v2;

    function f(bool b) public pure {
        if (b)
            v1[1] = 1;
        if ( b )
            v1[1] = 2;
        if (b){
            uint8[10] memory memoryValues = v0;
            memoryValues[0] = 2;
        }
    }

    function main() public pure {
    }
}

pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/
