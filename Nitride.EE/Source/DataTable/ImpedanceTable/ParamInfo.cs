/// ***************************************************************************
/// Nitride Shared Libraries and Utilities
/// Copyright 2001-2008, 2014-2021 Xu Li - me@xuli.us
/// 
/// Chrono Table
/// 
/// ***************************************************************************

using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Numerics;
using System.IO;

namespace Nitride.EE
{
    public class ParamInfo : IEquatable<ParamInfo>, IEquatable<string>
    {
        public ParamInfo(ParamType type, int p1, int p2)
        {
            Type = type;
            PortNum1 = p1;
            PortNum2 = p2;
            Name = Type.ToString() + PortNum1.ToString() + PortNum2.ToString();
        }

        public ParamType Type { get; }

        public int PortNum1 { get; }

        public int PortNum2 { get; }

        public string Name { get; }

        public override string ToString() => Name;

        public override int GetHashCode() => Name.GetHashCode();

        public virtual bool Equals(ParamInfo other) => Type == other.Type && PortNum1 == other.PortNum1 && PortNum2 == other.PortNum2;

        public virtual bool Equals(string other) => Name == other;

        public override bool Equals(object other)
        {
            if (other is ParamInfo dc)
                return Equals(dc);
            if (other is string s)
                return Equals(s);
            else
                return false;
        }

        public static bool operator !=(ParamInfo s1, ParamInfo s2) => !s1.Equals(s2);
        public static bool operator ==(ParamInfo s1, ParamInfo s2) => s1.Equals(s2);
        public static bool operator !=(ParamInfo s1, string s2) => !s1.Equals(s2);
        public static bool operator ==(ParamInfo s1, string s2) => s1.Equals(s2);
    }
}