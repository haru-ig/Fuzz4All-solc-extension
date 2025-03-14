pragma solidity ^0.8.0;
contract modifierC{
    function g() public view returns (uint256){
        uint256 x;
        if (!(uint256(0)>x + 257))
            return 42;
        return x;
    }
}

pragma solidity ^0.8.0;
contract modifierE{
    function f() public view returns (uint256){
        uint256 x;
        for (uint256 i=0; i<2**256; i = i + 257 + 1) {
            if (uint256(0)>x + i)
                return 42;
        }
        return x;
    }
    function c() public view returns (uint256){
        uint256 x;
        for (uint256 i=0; i<2**256; i++)
        if (!(uint256(0)>x + i + 257)){
            return 42;
        }
        return x;
    }
}

pragma solidity ^0.8.0;
contract modifierF{
    function f() public view returns (uint256){
        uint256 x;
        while (uint256(0)>x + 257) {
            continue;
        }
        if (uint256(0)>x + 257)
            return 42;
        return x;
    }
    function c() public view returns (uint256){
        uint256 x;
        while (uint256(0)>x + 257) {
            x += 257;
            continue;
        }
        if (!(uint256(0)>x + 257))
            return 42;
        return x;
    }
}

pragma solidity ^0.8.0;
contract modifierG{
    function f() public view returns (uint256) {
        uint256 x;
        for (uint256 i=0; i<2**256; i = i + 257 + 1) {
            continue;
        }
        if (uint256(0)>x + i)
            return 42;
        return x;
    }
    function c() public view returns (uint256) {
        uint256 x;
        for (uint256 i=0; i<2**256; i++)
        if (uint256(0) > x + i + 257)
            return 42;
        return x;
    }
}
