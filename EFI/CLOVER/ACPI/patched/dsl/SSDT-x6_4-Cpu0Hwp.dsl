/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-x6_4-Cpu0Hwp.aml, Tue Mar 27 21:34:29 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000008E (142)
 *     Revision         0x02
 *     Checksum         0x2D
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Hwp"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20141107 (538185991)
 */
DefinitionBlock ("", "SSDT", 2, "PmRef", "Cpu0Hwp", 0x00003000)
{
    External (_PR_.CPU0, ProcessorObj)
    External (_PR_.HWPA, FieldUnitObj)
    External (_PR_.HWPV, FieldUnitObj)
    External (CPC1, IntObj)    // Warning: Unknown object
    External (CPC2, IntObj)    // Warning: Unknown object

    Scope (\_PR.CPU0)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Store (RefOf (CPC1), Local0)
            Store (\_PR.HWPA, Index (DerefOf (Index (DerefOf (Local0), 0x06)), 0x07))
            ShiftRight (\_PR.HWPA, 0x08, Local1)
            Store (Local1, Index (DerefOf (Index (DerefOf (Local0), 0x06)), 0x08))
            If (LEqual (HWPV, One))
            {
                Return (CPC1)
            }
            ElseIf (LEqual (HWPV, 0x02))
            {
                Return (CPC2)
            }
        }
    }
}

