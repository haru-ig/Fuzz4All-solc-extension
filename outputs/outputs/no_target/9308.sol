pragma solidity ^0.8.0;
contract semanticallyEquiv5{
    uint a;
    function semanticallyEquiv5(uint x) public {
        a = x;
    }
}

pragma solidity ^0.8.0;
contract semanticallyEquiv4{
}

pragma solidity ^0.8.0;
contract semanticallyEquiv3{
}
pragma solidity ^0.8.0;
contract semanticallyEquiv2{
    uint public v[50];
}
pragma solidity ^0.8.0;
contract semanticallyEquiv1{
}

pragma solidity ^0.8.0;
contract semanticallyEquiv{
    semanticallyEquiv3 p1;
    semanticallyEquiv4 p2;
    semanticallyEquiv1 p3;
    semanticallyEquiv2 p4;
    semanticallyEquiv5 p5;
    semanticallyEquiv6 p6;
}
pragma solidity ^0.8.0;
contract program {
    function program() public {
        semanticallyEquiv v = semanticallyEquiv(semanticallyEquiv1());
    }
}
