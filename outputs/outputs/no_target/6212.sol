pragma solidity ^0.8.0;
contract ProgramModified {
    event Emitted(address from, uint value);

    uint constant minValue = 1;
    uint constant increment = 2;
    uint constant maxValue = 199;

    function _generate() internal pure returns(uint) {
        return 30650;
    }

    function setMaxValue(uint _maxValue) public {
        maxValue = _maxValue;
    }
}

pragma solidity ^0.8.0;
contract MultiGeneratorConfirmed {
   uint constant minValue = 0;
   uint constant increment = 1;
   uint constant maxValue = 99999;

   uint private _currentValue= maxValue;
   uint private _maxValue;

   function _generate(uint _lastGeneratedValue, uint _increment) internal pure returns(uint) {
       while (_currentValue >= 0) {
            _lastGeneratedValue += increment;
            _currentValue = _currentValue / 1000;
       }
       return _lastGeneratedValue;
   }


  function createMutatedProgram(uint _initialValueOfMutatedProgramToBeMutated) public{
      assert()
      _maxValue = _initialValueOfMutatedProgramToBeMutated;
      while (true) {
        ProgramModified program = new ProgramModified();
        program.setMaxValue(_initialValueOfMutatedProgramToBeMutated);
        uint generatedNextValue = program._generate(maxValue, increment);

        if (generatedNextValue<= maxValue)
          break;
        else {
         _initialValueOfMutatedProgramToBeMutated =  _initialValueOfMutatedProgramToBeMutated + increment;
          generatedNextValue = program._generate(_initialValueOfMutatedProgramToBeMutated, increment);
        }
      }
      program = new ProgramModified();
      program.setMaxValue(_initialValueOfMutatedProgramToBeMutated);
      program.emitted(msg.sender, generatedNextValue);
  }


  event Generated(uint value);

  function emitted(address from, uint value) public {
      Generated(value);
    }
}
