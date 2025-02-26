# Uncomment the next line to define a global platform for your project
 platform :ios, '13.0'

target 'CloneMovie' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  pod 'Swinject'
  pod 'SwiftLint'
  pod 'Kingfisher'
  pod 'CollectionViewSlantedLayout', '~> 3.1'
  pod 'DLProgressHUD', '~> 1.0'

  pod 'UpcomingMoviesDomain', :path => 'UpcomingMoviesDomain/', :testspecs => ['UpcomingMoviesDomainTests']
  pod 'UpcomingMoviesDomain/TestDoubles', :path => 'UpcomingMoviesDomain/'

  pod 'UpcomingMoviesData', :path => 'UpcomingMoviesData/', :testspecs => ['UpcomingMoviesDataTests']
  pod 'UpcomingMoviesData/TestDoubles', :path => 'UpcomingMoviesData/'

  pod 'CoreDataInfrastructure', :path => 'CoreDataInfrastructure/', :testspecs => ['CoreDataInfrastructureTests']
  pod 'NetworkInfrastructure', :path => 'NetworkInfrastructure/', :testspecs => ['NetworkInfrastructureTests']
  pod 'NetworkInfrastructure/TestDoubles', :path => 'NetworkInfrastructure/'

  # Pods for CloneMovie

  target 'UpcomingMoviesTests' do
    inherit! :search_paths
  end

  post_install do |pi|
    pi.pods_project.targets.each do |t|
      t.build_configurations.each do |config|
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = deployment_target
      end
    end
  end
end
