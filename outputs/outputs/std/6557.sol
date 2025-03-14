pragma solidity ^0.8.0;
contract Mutate6 is Mutate5 {
    uint32 x;
}

pragma solidity ^0.8.0;
contract Mutate7 is Mutate5, Mutate6 {
}

pragma solidity ^0.8.0;
contract Mutate8 is Mutate5, Mutate6, Mutate7 {
}

pragma solidity ^0.8.0;
contract Mutate9 is Mutate5, Mutate6, Mutate7, Mutate8 {
}

pragma solidity ^0.8.0;
contract Mutate10 is Mutate5, Mutate6, Mutate7, Mutate8, Mutate9 {
}
