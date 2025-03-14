pragma solidity ^0.8.0;

contract Modifier
{

    constructor() { }

    modifier isMutantAndNotDeprecated() {
        bool mutantAndNotDeprecated = true;
        bool deprecated = false;

        assembly {
            SSTORE32($1, $2, $0)
        }
        return mutantAndNotDeprecated
        &&!deprecated;
    }
}
