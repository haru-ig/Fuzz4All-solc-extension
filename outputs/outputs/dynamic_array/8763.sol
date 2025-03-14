pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity62_dynamic_186 {
    uint public m ;
    require(uint8(m) < 10);
    assembly {
        m := m + m
    }
    assembly {
        m := m + m
    }
    uint8 x = uint8(m) * 2;
}
contract SemanticallyEquivalentSolidity62_dynamic_187 {
    uint public m ;
    require(uint(m) < 10);
    assembly {
        m := m * m
    }
    assembly {
        m := m / m
    }
}
contract SemanticallyEquivalentSolidity62_dynamic_188 {
    uint public m ;
    require(uint8(m) < 10);
    assembly {
        m := m + m - m
    }
    assembly {
        m := m * m + m
    }
    assembly {
        m := m + m * m
    }
}
contract SemanticallyEquivalentSolidity62_dynamic_189 {
    uint public m ;
    require(uint8(m) < 10);
    assembly {
        m := m + m * m
    }
    assembly {
        m := m + m + m - m - m
    }
    assembly {
        m := (-m) + m * m
    }
}
contract SemanticallyEquivalentSolidity62_dynamic_190 {
    uint public m ;
    require(uint8(m) < 10);
    assembly {
        m := m + m + m
    }
    assembly {
        m := m + m * m + m
    }
    assembly {
        m := m + m / m * m + m
    }
}
contract SemanticallyEquivalentSolidity62_dynamic_191 {
    uint public m ;
    require(uint8(m) < 10);
    assembly {
        m := m / m * m
    }
    assembly {
        m := m + m + m * m
    }
    assembly {
        m := m + -m + m + m
    }
}
contract SemanticallyEquivalentSolidity62_dynamic_192 {
    uint public m ;
    require(uint8(m) < 10);
    assembly {
        m := -m + m * m + m
    }
    assembly {
        m := m / m * m + m
    }
}
contract SemanticallyEquivalentSolidity62_dynamic_193 {
    uint public m ;
    require(uint8(m) < 10);
    assembly {
        m := m + m + 1 * m * m
    }
    assembly {
