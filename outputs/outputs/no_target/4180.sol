pragma solidity ^0.8.0;
contract P9 {

    uint x;

    function h() internal returns (uint256) {
        return x;
    }
}
contract P10 {

}
pragma solidity ^0.8.0;
contract P9 {

    uint x;

    function h() internal returns (uint256) {
        uint256 local_1;
        {
            unchecked {
                local_1 = x;
            }
            x = x + 1;
        }
        return local_1 + 1;
    }
}
contract P10 {

}
pragma solidity ^0.8.0;
contract P9 {

    uint x;

    function h() internal returns (uint256) {
        uint256 local_2;
        {
            unchecked {
                local_2 = x;
                x;
            }
        }
        return local_2 + 1;
    }
}
contract P10 {

}
pragma solidity ^0.8.0;
contract P9 {

    uint x;

    function h() internal returns (uint256) {
        uint256 local_3;
        {
            unchecked {
                local_3 = x;
                unchecked {
                    x;
                }
            }
        }
        return local_3 + 1;
    }
}
contract P10 {
}
