﻿using System;
using System.ComponentModel;
using System.Windows;
using System.Windows.Media;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;

namespace Saluse.ComicReader.Effects
{
	[Description("Gaussian Blur")]
	public class Gaussian : CRShaderEffect
	{
		public Gaussian() : base("Gaussian.ps")
		{
		}
	}
}
