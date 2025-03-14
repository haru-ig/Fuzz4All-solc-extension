pragma solidity ^0.8.0;
contract Test69 {
    function y() public {
        address[] memory a;
        a[0] = address();
    }
}

pragma solidity ^0.8.0;
contract Test70 {
    function y() public {
        address[] memory a;
        a[0] = address(0);
    }
}

pragma solidity ^0.8.0;
contract Test71 {
    function y() public {
        address[] memory a;
        a[0] = address(0);
    }
}

pragma solidity ^0.8.0;
contract Test72 {
    function y() public {
        address[] memory a;
        a.push(address(0));
    }
}
