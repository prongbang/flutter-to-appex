package com.prongbang.appex

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.prongbang.appex.databinding.ActivityMainBinding
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.android.FlutterActivityLaunchConfigs

class MainActivity : AppCompatActivity() {

	private val binding by lazy { ActivityMainBinding.inflate(layoutInflater) }

	override fun onCreate(savedInstanceState: Bundle?) {
		super.onCreate(savedInstanceState)
		setContentView(binding.root)

		binding.flutterCounterButton.setOnClickListener {
			startActivity(FlutterActivity
					.withNewEngine()
					.backgroundMode(FlutterActivityLaunchConfigs.BackgroundMode.transparent)
					.build(this))
		}
	}
}