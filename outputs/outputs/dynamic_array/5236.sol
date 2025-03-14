pragma solidity ^0.8.0;
contract Test2 {
    function nestedm() internal pure returns (int[] memory) {
        int[] memory a = new int[](10);
        a[2] = 10;
        uint[] memory u = new uint[](10);
        u[2] = 10;
        return u;
    }
    function nested() public pure returns (int[] memory) {
        int[] memory a = new int[](10);
        a[2] = 10;
        a[3] = 10;
        return a;
    }
}

pragma solidity ^0.8.0;
contract Test2 {
    modifier alwaysSuccess()
    {
        return true;
    }

    function nestedd() public alwaysSuccess { }

    function nestede() public alwaysSuccess { }

    function nestedf() public pure returns (int[] memory) {
        return new int[](3);
    }
}

pragma solidity ^0.8.0;
contract Test2 {
    modifier neverSuccess()
    {
        revert();
        _;
    }

    function nestedh() public {
        revert();
    }

    function nestegh() public neverSuccess { }

    function nestedi() public {
        revert();
    }

    function nestedj() public {
        revert();
    }

    function nestdf() public pure returns (int[] memory) {
        return new int[](3);
    }
}
