pragma solidity ^0.8.0;
contract P11 {
    function i() pure public returns (uint256 x, uint256 y, uint256 z) {
        return (1, 2, 3);
    }
}
pragma solidity ^0.8.0;
contract L9 {
    function i() pure public returns (uint256 x, uint256 y, uint256 z) {
        x = y = z = 1;
        return (x, y, z);
    }
}
pragma solidity ^0.8.0;
contract L9 {
    function i() virtual public returns (uint256 x, uint256 y, uint256 z) {
        x = y = z = 1;
        return (x, y, z);
    }
}
pragma solidity ^0.8.0;
contract L9 {
    function i() pure virtual public returns (uint256 x, uint256 y, uint256 z) {
        x = y = z = 1;
    }
}
pragma solidity ^0.8.0;
contract T15 {
    function i() pure public returns (uint256 x, uint256 y, uint256 z) {
        return (1, 2, 3);
    }
}
pragma solidity ^0.8.0;
contract T15 {
    function i() pure virtual public returns (uint256 x, uint256 y, uint256 z) {
        return (1, 2, 3);
    }
}
pragma solidity ^0.8.0;
contract T15 {
    function i() pure public {}
}
pragma solidity ^0.8.0;
contract T15 {
    function i() pure internal returns (uint256 value) {
        value = 1;
        return value;
    }
}
pragma solidity ^0.8.0;
contract T15 {
    function i() pure private returns (uint256 value) {
        value = 1;
        return value;
    }
}
pragma solidity ^0.8.0;
contract T15 {
    function i() pure public {}
    function j() pure internal returns () {
        return;
    }
}
pragma solidity ^0.8.0;
contract T15 {
    function i() pure public {}
    function j() pure private returns (uint256) {
        return 1;
    }
}
pragma solidity ^
