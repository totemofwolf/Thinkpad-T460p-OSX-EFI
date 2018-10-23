/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-4-SataAhci.aml, Tue Mar 27 21:34:28 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000018D2 (6354)
 *     Revision         0x01
 *     Checksum         0x15
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "SataAhci"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20141107 (538185991)
 */
DefinitionBlock ("", "SSDT", 1, "LENOVO", "SataAhci", 0x00001000)
{
    External (_SB_.PCI0.GPCB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PCIC, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.PCID, MethodObj)    // 4 Arguments
    External (_SB_.PCI0.SAT1, DeviceObj)
    External (_SB_.PCI0.SAT1.SDSM, IntObj)    // Warning: Unknown object
    External (DPP0, FieldUnitObj)
    External (DPP1, FieldUnitObj)
    External (DPP2, FieldUnitObj)
    External (DPP3, FieldUnitObj)
    External (DPP4, FieldUnitObj)
    External (DVS0, FieldUnitObj)
    External (DVS1, FieldUnitObj)
    External (DVS2, FieldUnitObj)
    External (DVS3, FieldUnitObj)
    External (ND11, FieldUnitObj)
    External (ND12, FieldUnitObj)
    External (ND13, FieldUnitObj)
    External (ND21, FieldUnitObj)
    External (ND22, FieldUnitObj)
    External (ND23, FieldUnitObj)
    External (NEA1, FieldUnitObj)
    External (NEA2, FieldUnitObj)
    External (NEA3, FieldUnitObj)
    External (NEB1, FieldUnitObj)
    External (NEB2, FieldUnitObj)
    External (NEB3, FieldUnitObj)
    External (NEC1, FieldUnitObj)
    External (NEC2, FieldUnitObj)
    External (NEC3, FieldUnitObj)
    External (NIT1, FieldUnitObj)
    External (NIT2, FieldUnitObj)
    External (NIT3, FieldUnitObj)
    External (NL11, FieldUnitObj)
    External (NL12, FieldUnitObj)
    External (NL13, FieldUnitObj)
    External (NLD1, FieldUnitObj)
    External (NLD2, FieldUnitObj)
    External (NLD3, FieldUnitObj)
    External (NLR1, FieldUnitObj)
    External (NLR2, FieldUnitObj)
    External (NLR3, FieldUnitObj)
    External (NMB1, FieldUnitObj)
    External (NMB2, FieldUnitObj)
    External (NMB3, FieldUnitObj)
    External (NMV1, FieldUnitObj)
    External (NMV2, FieldUnitObj)
    External (NMV3, FieldUnitObj)
    External (NPB1, FieldUnitObj)
    External (NPB2, FieldUnitObj)
    External (NPB3, FieldUnitObj)
    External (NPC1, FieldUnitObj)
    External (NPC2, FieldUnitObj)
    External (NPC3, FieldUnitObj)
    External (NPM1, FieldUnitObj)
    External (NPM2, FieldUnitObj)
    External (NPM3, FieldUnitObj)
    External (NPV1, FieldUnitObj)
    External (NPV2, FieldUnitObj)
    External (NPV3, FieldUnitObj)
    External (NRA1, FieldUnitObj)
    External (NRA2, FieldUnitObj)
    External (NRA3, FieldUnitObj)

    Scope (\_SB.PCI0.SAT1)
    {
        Device (PRT0)
        {
            Name (DIP0, 0x00)
            Name (FDEV, Zero)
            Name (FDRP, Zero)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5             
            })
            Name (HETF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x09,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HQTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x09, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3             
            })
            CreateByteField (DDTF, 0x01, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            CreateByteField (DGTF, 0x01, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Name (_ADR, 0xFFFF)  // _ADR: Address
            Scope (\_SB.PCI0.SAT1)
            {
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (PCIC (Arg0))
                    {
                        Return (PCID (Arg0, Arg1, Arg2, Arg3))
                    }

                    If (CondRefOf (\_SB.PCI0.SAT1.SDSM))
                    {
                        Return (\_SB.PCI0.SAT1.SDSM)
                    }

                    Return (0x00)
                }

                Method (RDCA, 5, Serialized)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    OperationRegion (RPAL, SystemMemory, Add (\_SB.PCI0.GPCB (), Add (0x000B8100, Arg1)), 0x04)
                    Field (RPAL, DWordAcc, Lock, Preserve)
                    {
                        RPCD,   32
                    }

                    OperationRegion (EPAC, SystemMemory, Add (\_SB.PCI0.GPCB (), 0x000B8308), 0x08)
                    Field (EPAC, DWordAcc, Lock, Preserve)
                    {
                        CAIR,   32, 
                        CADR,   32
                    }

                    OperationRegion (NCRG, SystemMemory, Add (\_SB.PCI0.GPCB (), 0x000B8FC0), 0x04)
                    Field (NCRG, DWordAcc, Lock, Preserve)
                    {
                        CRGC,   32
                    }

                    If (LGreater (Arg0, 0x02))
                    {
                        Return (0x00)
                    }
                    Else
                    {
                        Store (Arg0, CRGC)
                    }

                    While (One)
                    {
                        Store (ToInteger (Arg4), _T_0)
                        If (LEqual (_T_0, 0x00))
                        {
                            Return (RPCD)
                        }
                        ElseIf (LEqual (_T_0, 0x02))
                        {
                            Store (Arg1, CAIR)
                            Return (CADR)
                        }
                        ElseIf (LEqual (_T_0, 0x01))
                        {
                            And (Arg2, RPCD, Local0)
                            Or (Arg3, Local0, Local0)
                            Store (Local0, RPCD)
                        }
                        ElseIf (LEqual (_T_0, 0x03))
                        {
                            Store (Arg1, CAIR)
                            And (Arg2, CADR, Local0)
                            Or (Arg3, Local0, Local0)
                            Store (Local0, CADR)
                        }
                        Else
                        {
                            Return (0x00)
                        }

                        Break
                    }
                }

                Method (RPD0, 1, Serialized)
                {
                    RDCA (Arg0, 0xA4, 0xFFFFFFFC, 0x00, 0x01)
                }

                Method (RPD3, 1, Serialized)
                {
                    RDCA (Arg0, 0xA4, 0xFFFFFFFC, 0x03, 0x01)
                }

                Device (NVM1)
                {
                    Name (_ADR, 0x00C1FFFF)  // _ADR: Address
                    Name (PRBI, 0x00)
                    Name (PRBD, 0x00)
                    Name (PCMD, 0x00)
                    Name (NCRN, 0x00)
                    Name (NITV, 0x00)
                    Name (NPMV, 0x00)
                    Name (NPCV, 0x00)
                    Name (NL1V, 0x00)
                    Name (ND2V, 0x00)
                    Name (ND1V, 0x00)
                    Name (NLRV, 0x00)
                    Name (NLDV, 0x00)
                    Name (NEAV, 0x00)
                    Name (NEBV, 0x00)
                    Name (NECV, 0x00)
                    Name (NRAV, 0x00)
                    Name (NMBV, 0x00)
                    Name (NMVV, 0x00)
                    Name (NPBV, 0x00)
                    Name (NPVV, 0x00)
                    Method (EPD0, 0, Serialized)
                    {
                        RDCA (NCRN, Add (NPMV, 0x04), 0xFFFFFFFC, 0x00, 0x03)
                    }

                    Method (EPD3, 0, Serialized)
                    {
                        RDCA (NCRN, Add (NPMV, 0x04), 0xFFFFFFFC, 0x03, 0x03)
                    }

                    Method (CNRS, 0, Serialized)
                    {
                        If (LEqual (NITV, 0x00))
                        {
                            Return (0x00)
                        }

                        RDCA (NCRN, 0x10, 0x00, 0x00, 0x03)
                        RDCA (NCRN, 0x14, 0x00, 0x00, 0x03)
                        RDCA (NCRN, 0x18, 0x00, 0x00, 0x03)
                        RDCA (NCRN, 0x1C, 0x00, 0x00, 0x03)
                        RDCA (NCRN, 0x20, 0x00, 0x00, 0x03)
                        RDCA (NCRN, 0x24, 0x00, 0x00, 0x03)
                        RDCA (NCRN, 0x04, 0xFFFFFFF8, PCMD, 0x03)
                        RDCA (NCRN, PRBI, 0x00, PRBD, 0x03)
                        If (LNotEqual (NL1V, 0x00))
                        {
                            RDCA (NCRN, Add (NL1V, 0x0C), 0xFFFFFF00, ND2V, 0x03)
                            RDCA (NCRN, Add (NL1V, 0x08), 0x0F, And (ND1V, 0xFFFFFFF0), 0x03)
                            RDCA (NCRN, Add (NL1V, 0x08), 0xFFFFFFFF, ND1V, 0x03)
                        }

                        If (LNotEqual (NLRV, 0x00))
                        {
                            RDCA (NCRN, Add (NLRV, 0x04), 0xFFFFFFFF, NLDV, 0x03)
                        }

                        RDCA (NCRN, Add (NPCV, 0x10), 0xFFFFFEBF, And (NEAV, 0xFFFC), 0x03)
                        RDCA (NCRN, Add (NPCV, 0x28), 0xFFFFFBFF, NECV, 0x03)
                        RDCA (NCRN, Add (NPCV, 0x08), 0xFFFFFF1F, NEBV, 0x03)
                        RDCA (NCRN, 0x68, 0xFFFFFBFF, NRAV, 0x01)
                        If (LEqual (And (NEAV, 0x40), 0x40))
                        {
                            RDCA (NCRN, 0x50, 0xFFFFFFDF, 0x20, 0x01)
                            While (LEqual (And (RDCA (NCRN, 0x52, 0x00, 0x00, 0x00), 0x2000), 0x00))
                            {
                                Stall (0x0A)
                            }
                        }

                        RDCA (NCRN, Add (NPCV, 0x10), 0xFFFFFFFC, And (NEAV, 0x03), 0x03)
                        If (LNotEqual (NMVV, 0x00))
                        {
                            RDCA (NCRN, NMBV, 0x00, NMVV, 0x03)
                        }

                        If (LNotEqual (NPVV, 0x00))
                        {
                            RDCA (NCRN, NPBV, 0x00, NPVV, 0x03)
                        }

                        Return (0x00)
                    }

                    Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                    {
                        If (LEqual (NITV, 0x00))
                        {
                            Return (0x00)
                        }

                        Store (RDCA (NCRN, 0x04, 0x00, 0x00, 0x02), PCMD)
                        If (LEqual (NITV, 0x01))
                        {
                            Store (0x24, PRBI)
                            Store (RDCA (NCRN, 0x24, 0x00, 0x00, 0x02), PRBD)
                        }
                        ElseIf (LEqual (NITV, 0x02))
                        {
                            Store (0x10, PRBI)
                            Store (RDCA (NCRN, 0x10, 0x00, 0x00, 0x02), PRBD)
                        }

                        EPD3 ()
                        RPD3 (NCRN)
                        Return (0x00)
                    }

                    Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                    {
                        If (LEqual (NITV, 0x00))
                        {
                            Return (0x00)
                        }

                        RPD0 (NCRN)
                        EPD0 ()
                        Store (RDCA (NCRN, Add (NPMV, 0x04), 0x00, 0x00, 0x02), Local0)
                        If (LEqual (And (Local0, 0x08), 0x00))
                        {
                            CNRS ()
                        }

                        Return (0x00)
                    }

                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                        Store (NIT1, NITV)
                        Store (NPM1, NPMV)
                        Store (NPC1, NPCV)
                        Store (NL11, NL1V)
                        Store (ND21, ND2V)
                        Store (ND11, ND1V)
                        Store (NLR1, NLRV)
                        Store (NLD1, NLDV)
                        Store (NEA1, NEAV)
                        Store (NEB1, NEBV)
                        Store (NEC1, NECV)
                        Store (NRA1, NRAV)
                        Store (NMB1, NMBV)
                        Store (NMV1, NMVV)
                        Store (NPB1, NPBV)
                        Store (NPV1, NPVV)
                        Store (0x00, NCRN)
                    }
                }

                Device (NVM2)
                {
                    Name (_ADR, 0x00C2FFFF)  // _ADR: Address
                    Name (PRBI, 0x00)
                    Name (PRBD, 0x00)
                    Name (PCMD, 0x00)
                    Name (NCRN, 0x00)
                    Name (NITV, 0x00)
                    Name (NPMV, 0x00)
                    Name (NPCV, 0x00)
                    Name (NL1V, 0x00)
                    Name (ND2V, 0x00)
                    Name (ND1V, 0x00)
                    Name (NLRV, 0x00)
                    Name (NLDV, 0x00)
                    Name (NEAV, 0x00)
                    Name (NEBV, 0x00)
                    Name (NECV, 0x00)
                    Name (NRAV, 0x00)
                    Name (NMBV, 0x00)
                    Name (NMVV, 0x00)
                    Name (NPBV, 0x00)
                    Name (NPVV, 0x00)
                    Method (EPD0, 0, Serialized)
                    {
                        RDCA (NCRN, Add (NPMV, 0x04), 0xFFFFFFFC, 0x00, 0x03)
                    }

                    Method (EPD3, 0, Serialized)
                    {
                        RDCA (NCRN, Add (NPMV, 0x04), 0xFFFFFFFC, 0x03, 0x03)
                    }

                    Method (CNRS, 0, Serialized)
                    {
                        If (LEqual (NITV, 0x00))
                        {
                            Return (0x00)
                        }

                        RDCA (NCRN, 0x10, 0x00, 0x00, 0x03)
                        RDCA (NCRN, 0x14, 0x00, 0x00, 0x03)
                        RDCA (NCRN, 0x18, 0x00, 0x00, 0x03)
                        RDCA (NCRN, 0x1C, 0x00, 0x00, 0x03)
                        RDCA (NCRN, 0x20, 0x00, 0x00, 0x03)
                        RDCA (NCRN, 0x24, 0x00, 0x00, 0x03)
                        RDCA (NCRN, 0x04, 0xFFFFFFF8, PCMD, 0x03)
                        RDCA (NCRN, PRBI, 0x00, PRBD, 0x03)
                        If (LNotEqual (NL1V, 0x00))
                        {
                            RDCA (NCRN, Add (NL1V, 0x0C), 0xFFFFFF00, ND2V, 0x03)
                            RDCA (NCRN, Add (NL1V, 0x08), 0x0F, And (ND1V, 0xFFFFFFF0), 0x03)
                            RDCA (NCRN, Add (NL1V, 0x08), 0xFFFFFFFF, ND1V, 0x03)
                        }

                        If (LNotEqual (NLRV, 0x00))
                        {
                            RDCA (NCRN, Add (NLRV, 0x04), 0xFFFFFFFF, NLDV, 0x03)
                        }

                        RDCA (NCRN, Add (NPCV, 0x10), 0xFFFFFEBF, And (NEAV, 0xFFFC), 0x03)
                        RDCA (NCRN, Add (NPCV, 0x28), 0xFFFFFBFF, NECV, 0x03)
                        RDCA (NCRN, Add (NPCV, 0x08), 0xFFFFFF1F, NEBV, 0x03)
                        RDCA (NCRN, 0x68, 0xFFFFFBFF, NRAV, 0x01)
                        If (LEqual (And (NEAV, 0x40), 0x40))
                        {
                            RDCA (NCRN, 0x50, 0xFFFFFFDF, 0x20, 0x01)
                            While (LEqual (And (RDCA (NCRN, 0x52, 0x00, 0x00, 0x00), 0x2000), 0x00))
                            {
                                Stall (0x0A)
                            }
                        }

                        RDCA (NCRN, Add (NPCV, 0x10), 0xFFFFFFFC, And (NEAV, 0x03), 0x03)
                        If (LNotEqual (NMVV, 0x00))
                        {
                            RDCA (NCRN, NMBV, 0x00, NMVV, 0x03)
                        }

                        If (LNotEqual (NPVV, 0x00))
                        {
                            RDCA (NCRN, NPBV, 0x00, NPVV, 0x03)
                        }

                        Return (0x00)
                    }

                    Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                    {
                        If (LEqual (NITV, 0x00))
                        {
                            Return (0x00)
                        }

                        Store (RDCA (NCRN, 0x04, 0x00, 0x00, 0x02), PCMD)
                        If (LEqual (NITV, 0x01))
                        {
                            Store (0x24, PRBI)
                            Store (RDCA (NCRN, 0x24, 0x00, 0x00, 0x02), PRBD)
                        }
                        ElseIf (LEqual (NITV, 0x02))
                        {
                            Store (0x10, PRBI)
                            Store (RDCA (NCRN, 0x10, 0x00, 0x00, 0x02), PRBD)
                        }

                        EPD3 ()
                        RPD3 (NCRN)
                        Return (0x00)
                    }

                    Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                    {
                        If (LEqual (NITV, 0x00))
                        {
                            Return (0x00)
                        }

                        RPD0 (NCRN)
                        EPD0 ()
                        Store (RDCA (NCRN, Add (NPMV, 0x04), 0x00, 0x00, 0x02), Local0)
                        If (LEqual (And (Local0, 0x08), 0x00))
                        {
                            CNRS ()
                        }

                        Return (0x00)
                    }

                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                        Store (NIT2, NITV)
                        Store (NPM2, NPMV)
                        Store (NPC2, NPCV)
                        Store (NL12, NL1V)
                        Store (ND22, ND2V)
                        Store (ND12, ND1V)
                        Store (NLR2, NLRV)
                        Store (NLD2, NLDV)
                        Store (NEA2, NEAV)
                        Store (NEB2, NEBV)
                        Store (NEC2, NECV)
                        Store (NRA2, NRAV)
                        Store (NMB2, NMBV)
                        Store (NMV2, NMVV)
                        Store (NPB2, NPBV)
                        Store (NPV2, NPVV)
                        Store (0x01, NCRN)
                    }
                }

                Device (NVM3)
                {
                    Name (_ADR, 0x00C3FFFF)  // _ADR: Address
                    Name (PRBI, 0x00)
                    Name (PRBD, 0x00)
                    Name (PCMD, 0x00)
                    Name (NCRN, 0x00)
                    Name (NITV, 0x00)
                    Name (NPMV, 0x00)
                    Name (NPCV, 0x00)
                    Name (NL1V, 0x00)
                    Name (ND2V, 0x00)
                    Name (ND1V, 0x00)
                    Name (NLRV, 0x00)
                    Name (NLDV, 0x00)
                    Name (NEAV, 0x00)
                    Name (NEBV, 0x00)
                    Name (NECV, 0x00)
                    Name (NRAV, 0x00)
                    Name (NMBV, 0x00)
                    Name (NMVV, 0x00)
                    Name (NPBV, 0x00)
                    Name (NPVV, 0x00)
                    Method (EPD0, 0, Serialized)
                    {
                        RDCA (NCRN, Add (NPMV, 0x04), 0xFFFFFFFC, 0x00, 0x03)
                    }

                    Method (EPD3, 0, Serialized)
                    {
                        RDCA (NCRN, Add (NPMV, 0x04), 0xFFFFFFFC, 0x03, 0x03)
                    }

                    Method (CNRS, 0, Serialized)
                    {
                        If (LEqual (NITV, 0x00))
                        {
                            Return (0x00)
                        }

                        RDCA (NCRN, 0x10, 0x00, 0x00, 0x03)
                        RDCA (NCRN, 0x14, 0x00, 0x00, 0x03)
                        RDCA (NCRN, 0x18, 0x00, 0x00, 0x03)
                        RDCA (NCRN, 0x1C, 0x00, 0x00, 0x03)
                        RDCA (NCRN, 0x20, 0x00, 0x00, 0x03)
                        RDCA (NCRN, 0x24, 0x00, 0x00, 0x03)
                        RDCA (NCRN, 0x04, 0xFFFFFFF8, PCMD, 0x03)
                        RDCA (NCRN, PRBI, 0x00, PRBD, 0x03)
                        If (LNotEqual (NL1V, 0x00))
                        {
                            RDCA (NCRN, Add (NL1V, 0x0C), 0xFFFFFF00, ND2V, 0x03)
                            RDCA (NCRN, Add (NL1V, 0x08), 0x0F, And (ND1V, 0xFFFFFFF0), 0x03)
                            RDCA (NCRN, Add (NL1V, 0x08), 0xFFFFFFFF, ND1V, 0x03)
                        }

                        If (LNotEqual (NLRV, 0x00))
                        {
                            RDCA (NCRN, Add (NLRV, 0x04), 0xFFFFFFFF, NLDV, 0x03)
                        }

                        RDCA (NCRN, Add (NPCV, 0x10), 0xFFFFFEBF, And (NEAV, 0xFFFC), 0x03)
                        RDCA (NCRN, Add (NPCV, 0x28), 0xFFFFFBFF, NECV, 0x03)
                        RDCA (NCRN, Add (NPCV, 0x08), 0xFFFFFF1F, NEBV, 0x03)
                        RDCA (NCRN, 0x68, 0xFFFFFBFF, NRAV, 0x01)
                        If (LEqual (And (NEAV, 0x40), 0x40))
                        {
                            RDCA (NCRN, 0x50, 0xFFFFFFDF, 0x20, 0x01)
                            While (LEqual (And (RDCA (NCRN, 0x52, 0x00, 0x00, 0x00), 0x2000), 0x00))
                            {
                                Stall (0x0A)
                            }
                        }

                        RDCA (NCRN, Add (NPCV, 0x10), 0xFFFFFFFC, And (NEAV, 0x03), 0x03)
                        If (LNotEqual (NMVV, 0x00))
                        {
                            RDCA (NCRN, NMBV, 0x00, NMVV, 0x03)
                        }

                        If (LNotEqual (NPVV, 0x00))
                        {
                            RDCA (NCRN, NPBV, 0x00, NPVV, 0x03)
                        }

                        Return (0x00)
                    }

                    Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                    {
                        If (LEqual (NITV, 0x00))
                        {
                            Return (0x00)
                        }

                        Store (RDCA (NCRN, 0x04, 0x00, 0x00, 0x02), PCMD)
                        If (LEqual (NITV, 0x01))
                        {
                            Store (0x24, PRBI)
                            Store (RDCA (NCRN, 0x24, 0x00, 0x00, 0x02), PRBD)
                        }
                        ElseIf (LEqual (NITV, 0x02))
                        {
                            Store (0x10, PRBI)
                            Store (RDCA (NCRN, 0x10, 0x00, 0x00, 0x02), PRBD)
                        }

                        EPD3 ()
                        RPD3 (NCRN)
                        Return (0x00)
                    }

                    Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                    {
                        If (LEqual (NITV, 0x00))
                        {
                            Return (0x00)
                        }

                        RPD0 (NCRN)
                        EPD0 ()
                        Store (RDCA (NCRN, Add (NPMV, 0x04), 0x00, 0x00, 0x02), Local0)
                        If (LEqual (And (Local0, 0x08), 0x00))
                        {
                            CNRS ()
                        }

                        Return (0x00)
                    }

                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                        Store (NIT3, NITV)
                        Store (NPM3, NPMV)
                        Store (NPC3, NPCV)
                        Store (NL13, NL1V)
                        Store (ND23, ND2V)
                        Store (ND13, ND1V)
                        Store (NLR3, NLRV)
                        Store (NLD3, NLDV)
                        Store (NEA3, NEAV)
                        Store (NEB3, NEBV)
                        Store (NEC3, NECV)
                        Store (NRA3, NRAV)
                        Store (NMB3, NMBV)
                        Store (NMV3, NMVV)
                        Store (NPB3, NPBV)
                        Store (NPV3, NPVV)
                        Store (0x02, NCRN)
                    }
                }
            }

            Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
            {
                Store (0x00, DIP0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    If (LAnd (\DPP0, And (M078, 0x08)))
                    {
                        Store (0x01, DIP0)
                    }

                    CreateByteField (Arg0, 0x9D, BFDS)
                    ToInteger (BFDS, FDEV)
                    CreateByteField (Arg0, 0x9A, BFRP)
                    ToInteger (BFRP, FDRP)
                }
            }

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                If (DIP0)
                {
                    If (LAnd (LAnd (LEqual (DVS0, 0x01), LEqual (And (FDEV, 0x01), 0x01)), LEqual (And (FDRP, 0x80), 0x80)))
                    {
                        Return (HQTF)
                    }
                    Else
                    {
                        Return (HPTF)
                    }
                }
                ElseIf (LAnd (LAnd (LEqual (DVS0, 0x01), LEqual (And (FDEV, 0x01), 0x01)), LEqual (And (FDRP, 0x80), 0x80)))
                {
                    Return (HETF)
                }
                Else
                {
                    Return (HDTF)
                }
            }
        }

        Device (PRT1)
        {
            Name (DIP0, 0x00)
            Name (FDEV, 0x00)
            Name (FDRP, 0x00)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5             
            })
            Name (HETF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x09,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HQTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x09, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3             
            })
            CreateByteField (DDTF, 0x01, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            CreateByteField (DGTF, 0x01, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Name (_ADR, 0x0001FFFF)  // _ADR: Address
            Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
            {
                Store (0x00, DIP0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    If (LAnd (\DPP1, And (M078, 0x08)))
                    {
                        Store (0x01, DIP0)
                    }

                    CreateByteField (Arg0, 0x9D, BFDS)
                    ToInteger (BFDS, FDEV)
                    CreateByteField (Arg0, 0x9A, BFRP)
                    ToInteger (BFRP, FDRP)
                }
            }

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                If (DIP0)
                {
                    If (LAnd (LAnd (LEqual (DVS1, 0x01), LEqual (And (FDEV, 0x01), 0x01)), LEqual (And (FDRP, 0x80), 0x80)))
                    {
                        Return (HQTF)
                    }
                    Else
                    {
                        Return (HPTF)
                    }
                }
                ElseIf (LAnd (LAnd (LEqual (DVS1, 0x01), LEqual (And (FDEV, 0x01), 0x01)), LEqual (And (FDRP, 0x80), 0x80)))
                {
                    Return (HETF)
                }
                Else
                {
                    Return (HDTF)
                }
            }
        }

        Device (PRT2)
        {
            Name (DIP0, 0x00)
            Name (FDEV, 0x00)
            Name (FDRP, 0x00)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5             
            })
            Name (HETF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x09,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HQTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x09, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3             
            })
            CreateByteField (DDTF, 0x01, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            CreateByteField (DGTF, 0x01, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Name (_ADR, 0x0002FFFF)  // _ADR: Address
            Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
            {
                Store (0x00, DIP0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    If (LAnd (\DPP2, And (M078, 0x08)))
                    {
                        Store (0x01, DIP0)
                    }

                    CreateByteField (Arg0, 0x9D, BFDS)
                    ToInteger (BFDS, FDEV)
                    CreateByteField (Arg0, 0x9A, BFRP)
                    ToInteger (BFRP, FDRP)
                }
            }

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                If (DIP0)
                {
                    If (LAnd (LAnd (LEqual (DVS2, 0x01), LEqual (And (FDEV, 0x01), 0x01)), LEqual (And (FDRP, 0x80), 0x80)))
                    {
                        Return (HQTF)
                    }
                    Else
                    {
                        Return (HPTF)
                    }
                }
                ElseIf (LAnd (LAnd (LEqual (DVS2, 0x01), LEqual (And (FDEV, 0x01), 0x01)), LEqual (And (FDRP, 0x80), 0x80)))
                {
                    Return (HETF)
                }
                Else
                {
                    Return (HDTF)
                }
            }
        }

        Device (PRT3)
        {
            Name (DIP0, 0x00)
            Name (FDEV, 0x00)
            Name (FDRP, 0x00)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5             
            })
            Name (HETF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x09,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HQTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x09, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3             
            })
            CreateByteField (DDTF, 0x01, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            CreateByteField (DGTF, 0x01, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Name (_ADR, 0x0003FFFF)  // _ADR: Address
            Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
            {
                Store (0x00, DIP0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    If (LAnd (\DPP3, And (M078, 0x08)))
                    {
                        Store (0x01, DIP0)
                    }

                    CreateByteField (Arg0, 0x9D, BFDS)
                    ToInteger (BFDS, FDEV)
                    CreateByteField (Arg0, 0x9A, BFRP)
                    ToInteger (BFRP, FDRP)
                }
            }

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                If (DIP0)
                {
                    If (LAnd (LAnd (LEqual (DVS3, 0x01), LEqual (And (FDEV, 0x01), 0x01)), LEqual (And (FDRP, 0x80), 0x80)))
                    {
                        Return (HQTF)
                    }
                    Else
                    {
                        Return (HPTF)
                    }
                }
                ElseIf (LAnd (LAnd (LEqual (DVS3, 0x01), LEqual (And (FDEV, 0x01), 0x01)), LEqual (And (FDRP, 0x80), 0x80)))
                {
                    Return (HETF)
                }
                Else
                {
                    Return (HDTF)
                }
            }
        }

        Device (PRT4)
        {
            Name (DIP0, 0x00)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5             
            })
            Name (HETF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x09,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HQTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x09, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3             
            })
            CreateByteField (DDTF, 0x01, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            CreateByteField (DGTF, 0x01, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Name (_ADR, 0x0004FFFF)  // _ADR: Address
            Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
            {
                Store (0x00, DIP0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    If (LAnd (\DPP4, And (M078, 0x08)))
                    {
                        Store (0x01, DIP0)
                    }
                }
            }

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                If (DIP0)
                {
                    Return (HPTF)
                }

                Return (HDTF)
            }
        }
    }
}

