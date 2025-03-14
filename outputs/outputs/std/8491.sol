pragma solidity ^0.8.0;
import "./MutationEquivalence.sol";
contract MutatedGeneration
{

    MutationEquivalence oldGeneration;


    MutationEquivalence lastGeneration;
    address[] pub addresses = [0xBDAB3E512bDECCa693B7A59aBBDDB48981E7DBA4, 0x044C3a1C8569C38BfeB2B241384900EF029D99FF,0x4a52E46D21C859f7730f3A19De1cE0b9C1Ca3Dcc, 0x735B88b2D5a11C11b5d875128988E8F1b5ab2647, 0xA80B318031E6dF21dA5F0D930a2004a3A03a4726, 0x693a43c02173cB5652433E1b53A82160E7d51107, 0xC619C88A443bE3840E4a978d963d5A0d42d4a47e, 0xcE22a6882f07f196d96C1c70cE02e663E9B29e13, 0xa780225b3300126d0C31c853291a8C58492579fd, 0xb705d093F75A8799f7b47B29F2c8f7A435fF71A8f, 0xcE27d77704C2559F23A906059D9E050A8dDBC057c, 0xf2dEcf13A893A042e0Eb036497b0Db513e93A1C6f];
    bytes32 pub names[11] = ["<NAME>21D", "<NAME>", "<NAME> - Ethiop", "Elan", "<NAME>", "Suleiman-Zahara-Reyes-<NAME>", "Khan-Romanov-Shahriarat-Bunawan", "Daimon-Souza", "Soleiman-Zahara", "Suleiman-Zahara-Reyes", "Khan-Romanov-Shahriarat"];

    constructor(MutationEquivalence _oldGeneration)
    {
