pragma solidity ^0.8.0;
contract semantically_equivalent {
    uint public public_variable;
    constructor(uint8 a) public {
        public_variable = 0;
        public_variable += a;
    }
}
contract smart_contract_with_big_difference {
    int constant public a = 0;
    int constant public b = -1;
    constructor() public {
        assert(a * b > -1);
    }
}
contract smart_contract_with_no_big_difference {
    int constant public a = 0;
    int constant public b = 1;
    constructor() public {
        assert(a + b == 1);
    }
}
contract smart_contract_with_two_big_differences {
    int constant public a = -1;
    int constant public b = 1;
    constructor() public {
        assert(a * b > 1);
    }
}
contract smart_contract_with_negative_two_big_differences {
    int constant public a = 1;
    int constant public b = -1;
    constructor() public {
        assert(a + b == -1);
    }
}
contract smart_contract_with_two_negative_big_differences {
    int constant public a = -1;
    int constant public b = -1;
    constructor() public {
        assert(a * b == -2);
    }
}
contract smart_contract_with_big_difference_two_negative_differences {
    int constant public a = 1;
    int constant public b = -1;
    constructor() public {
        assert(2 * a < 0);
    }
}
contract smart_contract_with_negative_big_difference {
    int constant public a = -1;
    int constant public b = -1;
    constructor() public {
        assert(a + b < 0);
    }
}
contract smart_contract_with_big_difference_negative_differences {
    int constant public a = 1;
    int constant public b = -1;
    constructor() public {
        assert(a + b > 0);
    }
}
contract smart_contract_with_negated_big_difference {
    int constant public a = 1;
    int constant public b = 1;
    constructor() public {
        assert(abs(a - b) == 1);
    }
}
contract smart_contract_with_negated_two_big_differences {
    int constant public a = 1;
    int constant public b = -1;
    constructor() public {
        assert((a - b) == 0);
    }
}
contract smart_contract_with_negated_two_negative_differences {
    int constant public a = -1;
    int constant public b = -1;
    constructor() public {
        assert((a - b) == 1);
    }
}
contract smart_contract
