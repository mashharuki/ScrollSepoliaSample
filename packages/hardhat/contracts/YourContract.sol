// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.5 <0.9.0;
pragma abicoder v2;

contract YourContract {
	struct NestedStruct {
		uint a;
		SimpleStruct[][][] b;
	}
	struct SimpleStruct {
		uint x;
		uint y;
	}

	// State variables
	NestedStruct public sData;
	SimpleStruct public tData;
	uint public valueData;

	// Function to update the data
	function updateData(NestedStruct calldata _nestedStruct) public {
		// Update state variables
		sData = _nestedStruct; // Assigns the entire struct. For dynamic arrays, you might need more complex logic.
	}

	// Function to get the current data
	function geAllSData() public view returns (NestedStruct memory) {
		return (sData);
	}
}
