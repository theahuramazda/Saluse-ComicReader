﻿using System;
using System.ComponentModel;
using System.Windows;
using System.Windows.Media;
using System.Windows.Media.Effects;

namespace Saluse.ComicReader.Effects
{
	[Description("Inverse Greyscale")]
	public class InverseGreyScale : CRShaderEffect
	{
		public InverseGreyScale() : base("InverseGreyScale.ps")
		{
		}
	}
}
