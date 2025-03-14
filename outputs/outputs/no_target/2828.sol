pragma solidity ^0.8.0;
contract newStorageMut2{
    uint constant a = 3;
}

pragma solidity ^0.8.0;
contract newStorageMut3{
    uint constant a = 3;
    newStorageMut s = newStorageMut(0);
}

pragma solidity ^0.8.0;
contract newStorageMut4{
    uint constant a = 3;
    (uint, uint) = ((127,128));
    (uint, uint) = (127,128);
}

pragma solidity ^0.8.0;
contract newStorageMut5{
    uint constant a = 3;
    newStorageMut s = newStorageMut(0);
    (uint a[1]) memory a0;
}

pragma solidity ^0.8.0;
contract newStorageMut6{
    uint constant a = 3;
    (uint, uint) = ((127,128));
    (uint, uint) = (127,128);
    newStorageMut s;
}
