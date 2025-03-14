pragma solidity ^0.8.0;
contract MutableContract {
  uint256 a;
  uint256 b;
}

pragma solidity ^0.8.0;
contract MutantContract {
    uint8 c;
}

pragma solidity ^0.8.0;
contract RevertedMutableContract {
    uint256 a;
    uint256 b;
}
contract RevertedMutantContract {
    uint8 c;
}

pragma solidity ^0.8.0;
contract Modifier {
    constructor () first modifier
    second () only (first)
    third () {
    }
    modifier first {
            a;
    }
    modifier second {
            b;
    }
    modifier third {
        c;
    }
}

pragma solidity ^0.8.0;
contract RepetitiveMutantsContract {
    constructor (uint256 a) first constructor
    second constructor (uint256 b, uint256 c, uint256 d, uint256 e, uint256 f, uint256 g) only (b)
    third constructor (uint256 h, uint8 i, uint8 j, uint8 k, uint8 l, uint8 m, uint8 n, addr p, uint8 q, uint256 r, uint256 s, uint256 t, uint256 u) third only (h)
    mutation (bool v) only (v)
    constructor (uint256 v, uint256 x, uint256 n) third constructor (uint8 v, uint8 x, uint8 n, uint8 o) second constructor (uint8 v, uint8 x) second constructor (uint8 v, uint8 x, bool y) only (v)
    constructor (uint256 v) third constructor (uint8 v, uint8 x, uint8 n, uint8 o) third constructor (uint8 v, uint8 x, uint8 n, uint8 o)
    constructor (uint256 v) third constructor (uint8 v, uint8 x) third constructor (uint8 v, uint8 x, uint8 n, uint8 o) third constructor (uint8 v, uint8 x, uint8 n, uint8 o)
    constructor (uint256 v) third constructor (bool v) second constructor (uint8 v, uint8 x) third constructor (uint8 v, uint8 x, uint8 n, uint8 o, uint8 p) second constructor (uint8 v) third
    constructor (uint8 v, uint8 x, uint2
