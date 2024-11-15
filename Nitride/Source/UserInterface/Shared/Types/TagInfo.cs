﻿/// ***************************************************************************
/// Nitride Shared Libraries and Utilities
/// Copyright 2001-2008, 2014-2021 Xu Li - me@xuli.us
/// 
/// ***************************************************************************
/// 
using System;
using System.Windows.Forms;

namespace Nitride
{
    public class TagInfo : IDatum, IEquatable<TagInfo>
    {
        public TagInfo(int index, string text, DockStyle style, ColorTheme theme)
        {
            Index = index;
            Text = text;
            Style = style;
            Theme = theme;
        }

        public int Index { get; }

        public string Text { get; }

        public DockStyle Style { get; }

        public ColorTheme Theme { get; }

        public override int GetHashCode() => Index ^ Text.GetHashCode() ^ Style.GetHashCode();

        public bool Equals(TagInfo other) => Index == other.Index && Text == other.Text && Style == other.Style;

        public override bool Equals(object obj)
        {
            if (obj is TagInfo bd)
                return Equals(bd);
            else
                return false;
        }

        public static bool operator ==(TagInfo left, TagInfo right) => left.Equals(right);
        public static bool operator !=(TagInfo left, TagInfo right) => !left.Equals(right);

    }
}
